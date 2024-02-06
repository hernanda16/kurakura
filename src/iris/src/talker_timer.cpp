#include <ros/ros.h>
#include <std_msgs/String.h>

ros::Publisher chatter_pub;

void timerCallback(const ros::TimerEvent& event)
{
    std_msgs::String msg;
    msg.data = "Hello, world!";
    chatter_pub.publish(msg);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "talker");
    ros::NodeHandle nh;
    chatter_pub = nh.advertise<std_msgs::String>("/chat", 1);
    ros::Timer timer = nh.createTimer(ros::Duration(1.0), timerCallback);
    ros::spin();
    return 0;
}