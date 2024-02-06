#include "iris/angka.h"
#include "ros/ros.h"

void chatterCallback(const iris::angka::ConstPtr& msg)
{
    ROS_INFO("This is listener %d", msg->number);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "listener");
    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe("/chat", 10, chatterCallback);

    ros::spin();

    return 0;
}
