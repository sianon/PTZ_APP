//
// Created by Chian on 10/22/2024.
//

#include <iostream>
#include "net_work_ctrl.h"
#include "interact_cmd.pb.h"
#include <google/protobuf/util/json_util.h>
int _stdcall NotifyMsgs(pgoString data){
    char nData[data->datalen+1];
    nData[data->datalen] = 0;
    memcpy(nData,data->utf8Data,data->datalen);

    PTZControlProtol ptz;
    absl::Status status = google::protobuf::util::JsonStringToMessage(nData, &ptz);
    std::cout<<"recv from network :"<<nData<<endl;

    return 0;
}

NetWorkCtrl::NetWorkCtrl(QObject* parent)
: QObject(parent)
,host_ip_("192.168.2.188:1883")
,id_("4399")
,topic_("top1"){

}

NetWorkCtrl::~NetWorkCtrl(){

}

void NetWorkCtrl::mvInitMqtt(){
    char* tmp = GetGoString();
    mqttInit(const_cast<char*>(id_.c_str()), const_cast<char*>(topic_.c_str()), const_cast<char*>(host_ip_.c_str()));
    registerCallBack(GoUintptr(NotifyMsgs));
}

void NetWorkCtrl::mbSendCmdByTopic(string topics, string msgs){
    if(topics.empty() || msgs.empty()) return;

    char* topic = const_cast<char*>(topics.c_str());
    char* msg = const_cast<char*>(msgs.c_str());

    mqttSendProto(topic, msg);
}

void NetWorkCtrl::mbSendCmdTest(){
    char* tmp = GetGoString();
    InfraredImageSettings inf;
    inf.set_brightness(6);
    inf.set_contrast(6);
    inf.set_denoise(6);
    inf.set_intensity(6);

    PTZControlProtol ptz;
    ptz.set_type(GET_InfraredImageSettings);
    ptz.set_timestamp(time(NULL));
    ptz.set_device_id("4399");

    *ptz.mutable_infrared_image_settings() = inf;

    string ttp;

    google::protobuf::util::MessageToJsonString(ptz, &ttp);

    switch(ptz.content_case()){
        case PTZControlProtol::kInfraredImageSettings:
            auto tmps = ptz.infrared_image_settings().brightness();
            break;
    }

    mqttSendProto("top1", ttp.data());
}
