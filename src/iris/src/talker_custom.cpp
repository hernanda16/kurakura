#include "iris/angka.h"
#include "ros/ros.h"

int main(int argc, char** argv)
{
    ros::init(argc, argv, "talker");
    ros::NodeHandle n;
    ros::Publisher chatter_pub = n.advertise<iris::angka>("/chat", 1);

    ros::Rate loop_rate(1);

    int count = 0;
    while (ros::ok()) {
        iris::angka msg;
        msg.number = count;

        ROS_INFO("Hello this is talker! %d", msg.number);

        chatter_pub.publish(msg);

        ros::spinOnce();

        loop_rate.sleep();
        ++count;
    }

    return 0;
}
