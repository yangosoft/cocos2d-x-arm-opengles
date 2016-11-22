#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"

#include <SDL/SDL.h>
#include <SDL/SDL_syswm.h>
#include <SDL/SDL_version.h>
#include <SDL/SDL_image.h>

#include <GLES3/gl3.h>
#include <GLES/egl.h>
#include <GLES2/gl2ext.h>

#include <cstdlib>
#include <iostream>
#include <fstream>
#include <vector>
#include <ctime>

class HelloWorld : public cocos2d::Layer
{
public:
    static cocos2d::Scene* createScene();

    virtual bool init();

    // a selector callback
    void menuCloseCallback(cocos2d::Ref* pSender);

    // implement the "static create()" method manually
    //CREATE_FUNC(HelloWorld);

    static HelloWorld* create()
    {
        printf("CREATE!\n");
        HelloWorld *pRet = new HelloWorld();
        printf("OK!\n");
        if (pRet && pRet->init())
        {
            pRet->autorelease();
            return pRet;
        }
        else
        {
            delete pRet;
            pRet = nullptr;
            return nullptr;
        }
    }

    virtual void update(float delta) override;

private:

    static const int steps = 45;

    float mTime;

    float mScales[steps];
    cocos2d::Sprite* circles[60];
    int mCurrentStep;

};

#endif // __HELLOWORLD_SCENE_H__
