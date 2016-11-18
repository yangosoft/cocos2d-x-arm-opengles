/**
 * @author cesarpachon
 */ 
#include <cstring>
#include "audio/linux/AudioEngine-linux.h"
#include "cocos2d.h"
using namespace cocos2d;
using namespace cocos2d::experimental;

AudioEngineImpl * g_AudioEngineImpl = nullptr;


typedef  int FMOD_RESULT;



AudioEngineImpl::AudioEngineImpl(){
};

AudioEngineImpl::~AudioEngineImpl(){
 
};

    
bool AudioEngineImpl::init(){
 
  return true;
};

int AudioEngineImpl::play2d(const std::string &fileFullPath ,bool loop ,float volume){
  return 0;
};

void AudioEngineImpl::setVolume(int audioID,float volume){
  
};

void AudioEngineImpl::setLoop(int audioID, bool loop){
  
};

bool AudioEngineImpl::pause(int audioID){
  return true;
};

bool AudioEngineImpl::resume(int audioID){
  return true;
};

bool AudioEngineImpl::stop(int audioID){
  return true;
};

void AudioEngineImpl::stopAll(){
  
};

float AudioEngineImpl::getDuration(int audioID){
  return 0.0f;
};

float AudioEngineImpl::getCurrentTime(int audioID){
 return 0;
};

bool AudioEngineImpl::setCurrentTime(int audioID, float time){
 return true;
};

void AudioEngineImpl::setFinishCallback(int audioID, const std::function<void (int, const std::string &)> &callback){
 
};



void AudioEngineImpl::uncache(const std::string& path){
 
};


void AudioEngineImpl::uncacheAll(){

};

    
int AudioEngineImpl::preload(const std::string& filePath, std::function<void(bool isSuccess)> callback){
  
  return 0; 
};


void AudioEngineImpl::update(float dt){
  
};


