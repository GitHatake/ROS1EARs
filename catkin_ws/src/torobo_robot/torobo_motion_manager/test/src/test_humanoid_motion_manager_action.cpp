#include <ros/ros.h>
#include <gtest/gtest.h>
#include <memory>
#include <thread>
#include "torobo_motion_manager/move_home_position_action.h"
#include "torobo_motion_manager/move_teaching_point_action.h"
#include "torobo_motion_manager/move_teaching_trajectory_action.h"
#include <actionlib/client/simple_action_client.h>

using namespace std;
using namespace torobo;

int	main(int argc, char **argv)
{
    ros::init(argc, argv, "test_torobo_motion_manager_action_node");
	testing::InitGoogleTest(&argc, argv);
	return  RUN_ALL_TESTS();
}

struct ControllerActionHelper
{
    void assertWaitForActionServer(const string& controller_name, ros::Duration timeout=ros::Duration(2.0))
    {
        actionlib::SimpleActionClient<torobo_msgs::MoveHomePositionAction> move_home_ac(controller_name + "/move_home_position");
        actionlib::SimpleActionClient<torobo_msgs::MoveTeachingPointAction> move_tp_ac(controller_name + "/move_teaching_point");
        actionlib::SimpleActionClient<torobo_msgs::MoveTeachingTrajectoryAction> move_tt_ac(controller_name + "/move_teaching_trajectory");
        ASSERT_TRUE(move_home_ac.waitForServer(ros::Duration(timeout)));
        ASSERT_TRUE(move_tp_ac.waitForServer(ros::Duration(timeout)));
        ASSERT_TRUE(move_tt_ac.waitForServer(ros::Duration(timeout)));
    }
};

class HumanoidMotionManagerActionTestFixture : public ::testing::Test
{
public:
    // member
    ros::NodeHandle nh_;
    std::unique_ptr<std::thread> thread_;
    bool thread_working_;
    std::vector<std::unique_ptr<MoveHomePositionActionServer>> move_home_as_;
    std::vector<std::unique_ptr<MoveTeachingPointActionServer>> move_tp_as_;
    std::vector<std::unique_ptr<MoveTeachingTrajectoryActionServer>> move_tt_as_;

    HumanoidMotionManagerActionTestFixture()
    {
    }

    virtual void SetUp()
    {
        thread_working_ = true;
        thread_.reset(new std::thread(std::bind(&HumanoidMotionManagerActionTestFixture::run, this)));
    }
    virtual void TearDown()
    {
        thread_working_ = false;
        thread_->join();
        thread_.reset();
        move_home_as_.clear();
        move_tp_as_.clear();
        move_tt_as_.clear();
    }

    void run()
    {
        while(thread_working_ && ros::ok())
        {
            ros::spinOnce();
            ros::Rate(50).sleep();
        }
    }

    vector<string> getJointNames(int joint_size, const string& joint_prefix="")
    {
        vector<string> joint_names;
        for(int i = 0; i < joint_size; i++)
        {
            string joint_name = joint_prefix + "joint";
            if(joint_size > 1)
            {
                joint_name += "_" + to_string(i+1);
            }
            joint_names.push_back(joint_name);
        }
        return joint_names;
    }

    void createHumanoid(int left_arm_joint_size, int right_arm_joint_size, int torso_joint_size, int head_joint_size, double rate=50.0, double timeout_sec=1.0)
    {
        map<string, int> prefix_joint_size_map = {
            {"left_arm", left_arm_joint_size},
            {"right_arm",  right_arm_joint_size},
            {"torso",  torso_joint_size},
            {"head",  head_joint_size}
        };
        for(auto itr : prefix_joint_size_map)
        {
            std::string controller_name = itr.first + "_controller";
            std::vector<std::string> joint_names = getJointNames(itr.second, itr.first + "/");
            move_home_as_.emplace_back(new MoveHomePositionActionServer(nh_, controller_name, joint_names, rate, timeout_sec, false));
            move_tp_as_.emplace_back(new MoveTeachingPointActionServer(nh_, controller_name, joint_names, rate, timeout_sec, false));
            move_tt_as_.emplace_back(new MoveTeachingTrajectoryActionServer(nh_, controller_name, joint_names, rate, timeout_sec, false));
        }
    }
};

TEST_F(HumanoidMotionManagerActionTestFixture, 16AxisHumanoidActionExist)
{
    createHumanoid(6, 6, 2, 2);

    // create action helper
    ControllerActionHelper action_h;

    // check action server exists
    action_h.assertWaitForActionServer("left_arm_controller");
    action_h.assertWaitForActionServer("right_arm_controller");
    action_h.assertWaitForActionServer("torso_controller");
    action_h.assertWaitForActionServer("head_controller");
}
