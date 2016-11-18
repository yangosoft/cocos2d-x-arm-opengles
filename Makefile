

TARGET = mygame1

SDK_ROOT=/home/devel/sdk-imx6/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi
CXXFLAGS=-std=c++11 -ggdb 
CPPFLAGS=-I./ -I${SDK_ROOT}/usr/include -I./external -I${SDK_ROOT}/usr/local/include/GLFW/ -I${SDK_ROOT}/usr/include/freetype2/ 
## CUSTOM DEFINES FOR OUR SDK
DEFINES=-DPLATFORM="iMX6x" -DEGL_API_FB -DLINUX -DUSE_SOC_MX6 -DLINUX  -DEGL_API_FB -DGPU_TYPE_VIV -DGL_GLEXT_PROTOTYPES -DENABLE_GPU_RENDER_20 -DEGL_EGLEXT_PROTOTYPES

CFLAGS=-I./ -I${SDK_ROOT}/usr/include -I./external -I${SDK_ROOT}/usr/local/include/GLFW/ -I${SDK_ROOT}/usr/include/freetype2/ 


LIBS=-L/home/devel/sdk-imx6/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib -lSDL_image -lSDL -L/home/devel/sdk-imx6/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib -lm `pkg-config --libs --cflags libpng`  -lz -ljpeg -lpng -lfreetype -lfontconfig -lgstreamer-1.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lxml2 -lglib-2.0 -lgstapp-1.0   -L/home/devel/sdk-imx6/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/lib -lEGL -lGAL -lCLC -lGLSLC -lVDK -lGLESv2 -lsqlite3 -lcurl

#SOURCES NOT NEEDED
# ./editor-support/cocostudio/CCDecorativeDisplay.cpp \
# ./editor-support/cocostudio/TriggerObj.cpp \
# ./editor-support/cocostudio/CCSkin.cpp \
# ./editor-support/cocostudio/CCTween.cpp \
# ./editor-support/cocostudio/CCSpriteFrameCacheHelper.cpp \
# ./editor-support/cocostudio/CCDatas.cpp \
# ./editor-support/cocostudio/CocoLoader.cpp \
# ./editor-support/cocostudio/CCActionFrame.cpp \
# ./editor-support/cocostudio/TriggerMng.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCSkeletonNode.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCActionTimelineNode.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCBoneNode.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCFrame.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCActionTimeline.cpp \
# ./editor-support/cocostudio/ActionTimeline/CSLoader.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCTimeLine.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCActionTimelineCache.cpp \
# ./editor-support/cocostudio/ActionTimeline/CCSkinNode.cpp \
# ./editor-support/cocostudio/CCBatchNode.cpp \
# ./editor-support/cocostudio/CCComController.cpp \
# ./editor-support/cocostudio/CCActionNode.cpp \
# ./editor-support/cocostudio/CCDisplayFactory.cpp \
# ./editor-support/cocostudio/WidgetCallBackHandlerProtocol.cpp \
# ./editor-support/cocostudio/TriggerBase.cpp \
# ./editor-support/cocostudio/CCActionManagerEx.cpp \
# ./editor-support/cocostudio/CCUtilMath.cpp \
# ./editor-support/cocostudio/CCArmatureAnimation.cpp \
# ./editor-support/cocostudio/CCComAudio.cpp \
# ./editor-support/cocostudio/DictionaryHelper.cpp \
# ./editor-support/cocostudio/CCComRender.cpp \
# ./editor-support/cocostudio/CocosStudioExtension.cpp \
# ./editor-support/cocostudio/CCComAttribute.cpp \
# ./editor-support/cocostudio/CCSSceneReader.cpp \
# ./editor-support/cocostudio/CCArmatureDataManager.cpp \
# ./editor-support/cocostudio/CCArmature.cpp \
# ./editor-support/cocostudio/WidgetReader/WidgetReader.cpp \
# ./editor-support/cocostudio/WidgetReader/ComAudioReader/ComAudioReader.cpp \
# ./editor-support/cocostudio/WidgetReader/SkeletonReader/BoneNodeReader.cpp \
# ./editor-support/cocostudio/WidgetReader/SkeletonReader/SkeletonNodeReader.cpp \
# ./editor-support/cocostudio/WidgetReader/TextAtlasReader/TextAtlasReader.cpp \
# ./editor-support/cocostudio/WidgetReader/TextBMFontReader/TextBMFontReader.cpp \
# ./editor-support/cocostudio/WidgetReader/NodeReader/NodeReader.cpp \
# ./editor-support/cocostudio/WidgetReader/PageViewReader/PageViewReader.cpp \
# ./editor-support/cocostudio/WidgetReader/Light3DReader/Light3DReader.cpp \
# ./editor-support/cocostudio/WidgetReader/TextReader/TextReader.cpp \
# ./editor-support/cocostudio/WidgetReader/ListViewReader/ListViewReader.cpp \
# ./editor-support/cocostudio/WidgetReader/NodeReaderDefine.cpp \
# ./editor-support/cocostudio/WidgetReader/Node3DReader/Node3DReader.cpp \
# ./editor-support/cocostudio/WidgetReader/Particle3DReader/Particle3DReader.cpp \
# ./editor-support/cocostudio/WidgetReader/NodeReaderProtocol.cpp \
# ./editor-support/cocostudio/WidgetReader/ButtonReader/ButtonReader.cpp \
# ./editor-support/cocostudio/WidgetReader/SliderReader/SliderReader.cpp \
# ./editor-support/cocostudio/WidgetReader/GameNode3DReader/GameNode3DReader.cpp \
# ./editor-support/cocostudio/WidgetReader/ImageViewReader/ImageViewReader.cpp \
# ./editor-support/cocostudio/WidgetReader/ProjectNodeReader/ProjectNodeReader.cpp \
# ./editor-support/cocostudio/WidgetReader/GameMapReader/GameMapReader.cpp \
# ./editor-support/cocostudio/WidgetReader/UserCameraReader/UserCameraReader.cpp \
# ./editor-support/cocostudio/WidgetReader/SingleNodeReader/SingleNodeReader.cpp \
# ./editor-support/cocostudio/WidgetReader/LayoutReader/LayoutReader.cpp \
# ./editor-support/cocostudio/WidgetReader/ParticleReader/ParticleReader.cpp \
# ./editor-support/cocostudio/WidgetReader/TextFieldReader/TextFieldReader.cpp \
# ./editor-support/cocostudio/WidgetReader/CheckBoxReader/CheckBoxReader.cpp \
# ./editor-support/cocostudio/WidgetReader/LoadingBarReader/LoadingBarReader.cpp \
# ./editor-support/cocostudio/WidgetReader/ArmatureNodeReader/ArmatureNodeReader.cpp \
# ./editor-support/cocostudio/WidgetReader/ScrollViewReader/ScrollViewReader.cpp \
# ./editor-support/cocostudio/WidgetReader/Sprite3DReader/Sprite3DReader.cpp \
# ./editor-support/cocostudio/WidgetReader/SpriteReader/SpriteReader.cpp \
# ./editor-support/cocostudio/CCDataReaderHelper.cpp \
# ./editor-support/cocostudio/CCActionObject.cpp \
# ./editor-support/cocostudio/CCActionFrameEasing.cpp \
# ./editor-support/cocostudio/CCSGUIReader.cpp \
# ./editor-support/cocostudio/CCTransformHelp.cpp \
# ./editor-support/cocostudio/CCColliderDetector.cpp \
# ./editor-support/cocostudio/CCArmatureDefine.cpp \
# ./editor-support/cocostudio/CocoStudio.cpp \
# ./editor-support/cocostudio/CCDisplayManager.cpp \
# ./editor-support/cocostudio/CCInputDelegate.cpp \
# ./editor-support/cocostudio/CCProcessBase.cpp \
# ./editor-support/cocostudio/CCBone.cpp \
# ./editor-support/cocostudio/FlatBuffersSerialize.cpp \
# ./editor-support/cocostudio/CCComExtensionData.cpp \
# ./editor-support/cocosbuilder/CCBKeyframe.cpp \
# ./editor-support/cocosbuilder/CCLayerGradientLoader.cpp \
# ./editor-support/cocosbuilder/CCControlLoader.cpp \
# ./editor-support/cocosbuilder/CCLayerColorLoader.cpp \
# ./editor-support/cocosbuilder/CCNode+CCBRelativePositioning.cpp \
# ./editor-support/cocosbuilder/CCScale9SpriteLoader.cpp \
# ./editor-support/cocosbuilder/CCControlButtonLoader.cpp \
# ./editor-support/cocosbuilder/CCBAnimationManager.cpp \
# ./editor-support/cocosbuilder/CCMenuItemLoader.cpp \
# ./editor-support/cocosbuilder/CCBSequenceProperty.cpp \
# ./editor-support/cocosbuilder/CCNodeLoader.cpp \
# ./editor-support/cocosbuilder/CCLayerLoader.cpp \
# ./editor-support/cocosbuilder/CCBSequence.cpp \
# ./editor-support/cocosbuilder/CCBFileLoader.cpp \
# ./editor-support/cocosbuilder/CCBReader.cpp \
# ./editor-support/cocosbuilder/CCNodeLoaderLibrary.cpp \
# ./editor-support/cocosbuilder/CCParticleSystemQuadLoader.cpp \
# ./editor-support/cocosbuilder/CCMenuItemImageLoader.cpp \
# ./editor-support/cocosbuilder/CCSpriteLoader.cpp \
# ./editor-support/cocosbuilder/CCLabelTTFLoader.cpp \
# ./editor-support/cocosbuilder/CCScrollViewLoader.cpp \
# ./editor-support/cocosbuilder/CCLabelBMFontLoader.cpp \

SOURCES=./external/recast/DebugUtils/RecastDump.cpp \
./external/recast/DebugUtils/DebugDraw.cpp \
./external/recast/DebugUtils/DetourDebugDraw.cpp \
./external/recast/DebugUtils/RecastDebugDraw.cpp \
./external/recast/Detour/DetourNavMeshBuilder.cpp \
./external/recast/Detour/DetourNavMeshQuery.cpp \
./external/recast/Detour/DetourNode.cpp \
./external/recast/Detour/DetourNavMesh.cpp \
./external/recast/Detour/DetourCommon.cpp \
./external/recast/Detour/DetourAlloc.cpp \
./external/recast/DetourCrowd/DetourPathCorridor.cpp \
./external/recast/DetourCrowd/DetourProximityGrid.cpp \
./external/recast/DetourCrowd/DetourPathQueue.cpp \
./external/recast/DetourCrowd/DetourObstacleAvoidance.cpp \
./external/recast/DetourCrowd/DetourLocalBoundary.cpp \
./external/recast/DetourCrowd/DetourCrowd.cpp \
./external/recast/Recast/RecastAlloc.cpp \
./external/recast/Recast/RecastMeshDetail.cpp \
./external/recast/Recast/RecastContour.cpp \
./external/recast/Recast/RecastArea.cpp \
./external/recast/Recast/Recast.cpp \
./external/recast/Recast/RecastRegion.cpp \
./external/recast/Recast/RecastRasterization.cpp \
./external/recast/Recast/RecastLayers.cpp \
./external/recast/Recast/RecastMesh.cpp \
./external/recast/Recast/RecastFilter.cpp \
./external/recast/DetourTileCache/DetourTileCacheBuilder.cpp \
./external/recast/DetourTileCache/DetourTileCache.cpp \
./external/tinyxml2/tinyxml2.cpp \
./external/ConvertUTF/ConvertUTFWrapper.cpp \
./external/xxtea/xxtea.cpp \
./external/flatbuffers/idl_parser.cpp \
./external/flatbuffers/idl_gen_cpp.cpp \
./external/flatbuffers/idl_gen_text.cpp \
./external/flatbuffers/idl_gen_go.cpp \
./external/flatbuffers/idl_gen_general.cpp \
./external/flatbuffers/idl_gen_fbs.cpp \
./external/unzip/ioapi.cpp \
./external/unzip/ioapi_mem.cpp \
./external/unzip/unzip.cpp \
./external/clipper/clipper.cpp \
./external/edtaa3func/edtaa3func.cpp \
./storage/local-storage/LocalStorage.cpp \
./platform/CCSAXParser.cpp \
./platform/CCImage.cpp \
./platform/CCGLView.cpp \
./platform/desktop/CCGLViewImpl-desktop.cpp \
./platform/linux/CCCommon-linux.cpp \
./platform/linux/CCApplication-linux.cpp \
./platform/linux/CCStdC-linux.cpp \
./platform/linux/CCDevice-linux.cpp \
./platform/linux/CCFileUtils-linux.cpp \
./platform/CCThread.cpp \
./platform/CCFileUtils.cpp \
./ui/UITextBMFont.cpp \
./ui/UIHBox.cpp \
./ui/UIDeprecated.cpp \
./ui/UIHelper.cpp \
./ui/UICheckBox.cpp \
./ui/UITextField.cpp \
./ui/UIImageView.cpp \
./ui/UIScale9Sprite.cpp \
./ui/UIRadioButton.cpp \
./ui/UIScrollView.cpp \
./ui/CocosGUI.cpp \
./ui/UIRelativeBox.cpp \
./ui/UILayoutManager.cpp \
./ui/UIWidget.cpp \
./ui/UIPageViewIndicator.cpp \
./ui/UISlider.cpp \
./ui/UIWebView.cpp \
./ui/UIText.cpp \
./ui/UIVBox.cpp \
./ui/UIListView.cpp \
./ui/UILayoutComponent.cpp \
./ui/UILayoutParameter.cpp \
./ui/UIAbstractCheckButton.cpp \
./ui/UILoadingBar.cpp \
./ui/UIScrollViewBar.cpp \
./ui/UIPageView.cpp \
./ui/UIButton.cpp \
./ui/UIRichText.cpp \
./ui/UIEditBox/UIEditBoxImpl-linux.cpp \
./ui/UIEditBox/UIEditBox.cpp \
./ui/UIEditBox/UIEditBoxImpl-common.cpp \
./ui/UITextAtlas.cpp \
./ui/UILayout.cpp \
./extensions/ExtensionDeprecated.cpp \
./extensions/assets-manager/CCEventAssetsManagerEx.cpp \
./extensions/assets-manager/CCEventListenerAssetsManagerEx.cpp \
./extensions/assets-manager/AssetsManager.cpp \
./extensions/assets-manager/AssetsManagerEx.cpp \
./extensions/assets-manager/Manifest.cpp \
./extensions/GUI/CCScrollView/CCTableView.cpp \
./extensions/GUI/CCScrollView/CCTableViewCell.cpp \
./extensions/GUI/CCScrollView/CCScrollView.cpp \
./extensions/GUI/CCControlExtension/CCControlUtils.cpp \
./extensions/GUI/CCControlExtension/CCControlHuePicker.cpp \
./extensions/GUI/CCControlExtension/CCControlSlider.cpp \
./extensions/GUI/CCControlExtension/CCControl.cpp \
./extensions/GUI/CCControlExtension/CCControlSwitch.cpp \
./extensions/GUI/CCControlExtension/CCControlColourPicker.cpp \
./extensions/GUI/CCControlExtension/CCControlPotentiometer.cpp \
./extensions/GUI/CCControlExtension/CCControlStepper.cpp \
./extensions/GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
./extensions/GUI/CCControlExtension/CCControlButton.cpp \
./extensions/GUI/CCControlExtension/CCInvocation.cpp \
./extensions/physics-nodes/CCPhysicsSprite.cpp \
./extensions/physics-nodes/CCPhysicsDebugNode.cpp \
./cocos2d.cpp \
./base/ccUtils.cpp \
./base/CCProfiling.cpp \
./base/base64.cpp \
./base/CCEventController.cpp \
./base/CCEventListener.cpp \
./base/CCEventListenerMouse.cpp \
./base/CCAutoreleasePool.cpp \
./base/pvr.cpp \
./base/CCEventListenerKeyboard.cpp \
./base/CCConfiguration.cpp \
./base/TGAlib.cpp \
./base/CCUserDefault.cpp \
./base/CCConsole.cpp \
./base/CCScriptSupport.cpp \
./base/ccRandom.cpp \
./base/CCEventListenerController.cpp \
./base/CCProperties.cpp \
./base/CCEvent.cpp \
./base/CCEventListenerFocus.cpp \
./base/atitc.cpp \
./base/allocator/CCAllocatorGlobalNewDelete.cpp \
./base/allocator/CCAllocatorGlobal.cpp \
./base/allocator/CCAllocatorDiagnostics.cpp \
./base/etc1.cpp \
./base/CCRef.cpp \
./base/ccCArray.cpp \
./base/CCDirector.cpp \
./base/CCIMEDispatcher.cpp \
./base/ObjectFactory.cpp \
./base/CCData.cpp \
./base/CCController.cpp \
./base/ccUTF8.cpp \
./base/CCValue.cpp \
./base/CCEventListenerAcceleration.cpp \
./base/CCEventDispatcher.cpp \
./base/CCEventTouch.cpp \
./base/CCStencilStateManager.cpp \
./base/CCEventKeyboard.cpp \
./base/s3tc.cpp \
./base/CCEventFocus.cpp \
./base/CCEventListenerTouch.cpp \
./base/CCScheduler.cpp \
./base/CCNinePatchImageParser.cpp \
./base/CCEventAcceleration.cpp \
./base/CCEventListenerCustom.cpp \
./base/CCEventCustom.cpp \
./base/CCTouch.cpp \
./base/CCAsyncTaskPool.cpp \
./base/CCDataVisitor.cpp \
./base/ccTypes.cpp \
./base/CCEventMouse.cpp \
./base/ZipUtils.cpp \
./base/CCNS.cpp \
./network/CCDownloader.cpp \
./network/CCDownloader-curl.cpp \
./network/HttpCookie.cpp \
./network/HttpClient.cpp \
./network/WebSocket.cpp \
./network/SocketIO.cpp \
./physics3d/CCPhysics3DDebugDrawer.cpp \
./physics3d/CCPhysics3DWorld.cpp \
./physics3d/CCPhysics3DObject.cpp \
./physics3d/CCPhysics3DShape.cpp \
./physics3d/CCPhysics3DConstraint.cpp \
./physics3d/CCPhysicsSprite3D.cpp \
./physics3d/CCPhysics3D.cpp \
./physics3d/CCPhysics3DComponent.cpp \
./deprecated/CCDeprecated.cpp \
./deprecated/CCDictionary.cpp \
./deprecated/CCNotificationCenter.cpp \
./deprecated/CCArray.cpp \
./deprecated/CCString.cpp \
./deprecated/CCSet.cpp \
./renderer/CCGLProgramStateCache.cpp \
./renderer/CCRenderCommand.cpp \
./renderer/ccGLStateCache.cpp \
./renderer/CCTextureCube.cpp \
./renderer/CCQuadCommand.cpp \
./renderer/CCGLProgram.cpp \
./renderer/CCFrameBuffer.cpp \
./renderer/CCCustomCommand.cpp \
./renderer/CCTrianglesCommand.cpp \
./renderer/CCTextureAtlas.cpp \
./renderer/CCMaterial.cpp \
./renderer/CCBatchCommand.cpp \
./renderer/CCGLProgramCache.cpp \
./renderer/CCPrimitive.cpp \
./renderer/CCMeshCommand.cpp \
./renderer/ccShaders.cpp \
./renderer/CCTexture2D.cpp \
./renderer/CCRenderer.cpp \
./renderer/CCPrimitiveCommand.cpp \
./renderer/CCTechnique.cpp \
./renderer/CCVertexAttribBinding.cpp \
./renderer/CCGLProgramState.cpp \
./renderer/CCRenderState.cpp \
./renderer/CCTextureCache.cpp \
./renderer/CCVertexIndexData.cpp \
./renderer/CCVertexIndexBuffer.cpp \
./renderer/CCPass.cpp \
./renderer/CCGroupCommand.cpp \
./physics/CCPhysicsContact.cpp \
./physics/CCPhysicsJoint.cpp \
./physics/CCPhysicsWorld.cpp \
./physics/CCPhysicsBody.cpp \
./physics/CCPhysicsShape.cpp \
./math/Quaternion.cpp \
./math/Vec4.cpp \
./math/CCGeometry.cpp \
./math/CCVertex.cpp \
./math/Mat4.cpp \
./math/MathUtil.cpp \
./math/TransformUtils.cpp \
./math/Vec3.cpp \
./math/Vec2.cpp \
./math/CCAffineTransform.cpp \
./navmesh/CCNavMeshUtils.cpp \
./navmesh/CCNavMeshObstacle.cpp \
./navmesh/CCNavMeshAgent.cpp \
./navmesh/CCNavMesh.cpp \
./navmesh/CCNavMeshDebugDraw.cpp \
./2d/CCTMXObjectGroup.cpp \
./2d/CCProtectedNode.cpp \
./2d/CCMotionStreak.cpp \
./2d/CCAutoPolygon.cpp \
./2d/CCNode.cpp \
./2d/CCClippingRectangleNode.cpp \
./2d/CCFastTMXLayer.cpp \
./2d/CCActionInterval.cpp \
./2d/CCLayer.cpp \
./2d/CCActionCamera.cpp \
./2d/CCFontAtlasCache.cpp \
./2d/CCSpriteBatchNode.cpp \
./2d/CCFontCharMap.cpp \
./2d/CCActionInstant.cpp \
./2d/CCLabelAtlas.cpp \
./2d/CCComponentContainer.cpp \
./2d/CCFontAtlas.cpp \
./2d/CCProgressTimer.cpp \
./2d/CCActionGrid3D.cpp \
./2d/CCTMXLayer.cpp \
./2d/CCGrid.cpp \
./2d/CCTransitionProgress.cpp \
./2d/CCParticleSystemQuad.cpp \
./2d/CCGrabber.cpp \
./2d/CCComponent.cpp \
./2d/CCActionEase.cpp \
./2d/CCParallaxNode.cpp \
./2d/CCActionTiledGrid.cpp \
./2d/CCSprite.cpp \
./2d/CCTextFieldTTF.cpp \
./2d/CCActionCatmullRom.cpp \
./2d/CCActionManager.cpp \
./2d/CCParticleBatchNode.cpp \
./2d/CCGLBufferedNode.cpp \
./2d/CCFastTMXTiledMap.cpp \
./2d/CCLabelBMFont.cpp \
./2d/CCLabelTTF.cpp \
./2d/CCActionGrid.cpp \
./2d/CCAtlasNode.cpp \
./2d/CCTMXTiledMap.cpp \
./2d/CCMenu.cpp \
./2d/CCTweenFunction.cpp \
./2d/CCSpriteFrame.cpp \
./2d/CCTileMapAtlas.cpp \
./2d/CCClippingNode.cpp \
./2d/CCActionPageTurn3D.cpp \
./2d/CCRenderTexture.cpp \
./2d/CCAnimation.cpp \
./2d/CCCameraBackgroundBrush.cpp \
./2d/CCParticleSystem.cpp \
./2d/CCScene.cpp \
./2d/CCLabelTextFormatter.cpp \
./2d/CCLight.cpp \
./2d/CCAction.cpp \
./2d/CCMenuItem.cpp \
./2d/CCTMXXMLParser.cpp \
./2d/CCSpriteFrameCache.cpp \
./2d/CCActionTween.cpp \
./2d/CCAnimationCache.cpp \
./2d/CCFontFreeType.cpp \
./2d/CCParticleExamples.cpp \
./2d/CCCamera.cpp \
./2d/CCFontFNT.cpp \
./2d/CCDrawingPrimitives.cpp \
./2d/CCActionProgressTimer.cpp \
./2d/CCTransition.cpp \
./2d/CCLabel.cpp \
./2d/CCFont.cpp \
./2d/CCTransitionPageTurn.cpp \
./2d/CCNodeGrid.cpp \
./2d/CCDrawNode.cpp \
./audio/AudioEngine.cpp \
./audio/linux/SimpleAudioEngine.cpp \
./audio/linux/AudioEngine-linux.cpp \
./3d/CCFrustum.cpp \
./3d/CCPlane.cpp \
./external/poly2tri/sweep/advancing_front.cc.cpp \
./external/poly2tri/sweep/cdt.cc.cpp \
./external/poly2tri/sweep/sweep_context.cc.cpp \
./external/poly2tri/sweep/sweep.cc.cpp \
./external/poly2tri/common/shapes.cc.cpp \
./mygame/main.cpp \
./mygame/AppDelegate.cpp \
./mygame/HelloWorldScene.cpp 

THREEDIMENSION=./ui/UIEditBox/UIEditBoxImpl-stub.cpp \
./external/flatbuffers/flatc.cpp \
./3d/CCObjLoader.cpp \
./3d/CCMeshSkin.cpp \
./3d/CCAnimation3D.cpp \
./3d/CCRay.cpp \
./3d/CCBillBoard.cpp \
./3d/CCAnimate3D.cpp \
./3d/CCSkybox.cpp \
./3d/CCSkeleton3D.cpp \
./3d/CCBundleReader.cpp \
./3d/CCBundle3D.cpp \
./3d/CCAttachNode.cpp \
./3d/CCMeshVertexIndexData.cpp \
./3d/CCTerrain.cpp \
./3d/CCMesh.cpp \
./3d/CCAABB.cpp \
./3d/CCOBB.cpp \
./3d/CCMotionStreak3D.cpp \
./3d/CCSprite3D.cpp \
./3d/CCSprite3DMaterial.cpp \
./extensions/Particle3D/CCParticle3DAffector.cpp \
./extensions/Particle3D/CCParticleSystem3D.cpp \
./extensions/Particle3D/PU/CCPUPlaneColliderTranslator.cpp \
./extensions/Particle3D/PU/CCPUDoFreezeEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPUParticleFollower.cpp \
./extensions/Particle3D/PU/CCPUOnEventFlagObserver.cpp \
./extensions/Particle3D/PU/CCPUEmitterManager.cpp \
./extensions/Particle3D/PU/CCPUBillboardChain.cpp \
./extensions/Particle3D/PU/CCPUForceField.cpp \
./extensions/Particle3D/PU/CCPUCircleEmitter.cpp \
./extensions/Particle3D/PU/CCPUOnEventFlagObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUDoPlacementParticleEventHandler.cpp \
./extensions/Particle3D/PU/CCPUOnExpireObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUBaseColliderTranslator.cpp \
./extensions/Particle3D/PU/CCPUPlane.cpp \
./extensions/Particle3D/PU/CCPUMaterialTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnRandomObserver.cpp \
./extensions/Particle3D/PU/CCPURendererTranslator.cpp \
./extensions/Particle3D/PU/CCPUTextureAnimatorTranslator.cpp \
./extensions/Particle3D/PU/CCPUJetAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUAffector.cpp \
./extensions/Particle3D/PU/CCPUParticleSystem3DTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnCountObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnEmissionObserver.cpp \
./extensions/Particle3D/PU/CCPUScriptTranslator.cpp \
./extensions/Particle3D/PU/CCPUPointEmitter.cpp \
./extensions/Particle3D/PU/CCPUAlignAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnQuotaObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUDoFreezeEventHandler.cpp \
./extensions/Particle3D/PU/CCPUAlignAffector.cpp \
./extensions/Particle3D/PU/CCPUOnExpireObserver.cpp \
./extensions/Particle3D/PU/CCPUOnRandomObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPURibbonTrail.cpp \
./extensions/Particle3D/PU/CCPUCircleEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUFlockCenteringAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUObserverManager.cpp \
./extensions/Particle3D/PU/CCPUMaterialManager.cpp \
./extensions/Particle3D/PU/CCPUColorAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPULinearForceAffector.cpp \
./extensions/Particle3D/PU/CCPUUtil.cpp \
./extensions/Particle3D/PU/CCPULinearForceAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnTimeObserver.cpp \
./extensions/Particle3D/PU/CCPUOnCountObserver.cpp \
./extensions/Particle3D/PU/CCPUBaseForceAffector.cpp \
./extensions/Particle3D/PU/CCPUDynamicAttribute.cpp \
./extensions/Particle3D/PU/CCPUBoxEmitter.cpp \
./extensions/Particle3D/PU/CCPUDoAffectorEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPUVortexAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUParticleSystem3D.cpp \
./extensions/Particle3D/PU/CCPUBoxColliderTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnPositionObserver.cpp \
./extensions/Particle3D/PU/CCPUSlaveBehaviour.cpp \
./extensions/Particle3D/PU/CCPUDoStopSystemEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPUEventHandler.cpp \
./extensions/Particle3D/PU/CCPUBehaviourManager.cpp \
./extensions/Particle3D/PU/CCPUInterParticleColliderTranslator.cpp \
./extensions/Particle3D/PU/CCPUColorAffector.cpp \
./extensions/Particle3D/PU/CCPUPositionEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUPlaneCollider.cpp \
./extensions/Particle3D/PU/CCPUOnVelocityObserver.cpp \
./extensions/Particle3D/PU/CCPUSphereColliderTranslator.cpp \
./extensions/Particle3D/PU/CCPUSlaveEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUCollisionAvoidanceAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUDoEnableComponentEventHandler.cpp \
./extensions/Particle3D/PU/CCPUDoStopSystemEventHandler.cpp \
./extensions/Particle3D/PU/CCPUPointEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUSlaveEmitter.cpp \
./extensions/Particle3D/PU/CCPUTextureAnimator.cpp \
./extensions/Particle3D/PU/CCPUBoxEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnQuotaObserver.cpp \
./extensions/Particle3D/PU/CCPUScriptCompiler.cpp \
./extensions/Particle3D/PU/CCPUScaleAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUGravityAffector.cpp \
./extensions/Particle3D/PU/CCPUEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUAffectorManager.cpp \
./extensions/Particle3D/PU/CCPUForceFieldAffector.cpp \
./extensions/Particle3D/PU/CCPUSphereCollider.cpp \
./extensions/Particle3D/PU/CCPULineAffector.cpp \
./extensions/Particle3D/PU/CCPULineEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUScriptParser.cpp \
./extensions/Particle3D/PU/CCPUEventHandlerManager.cpp \
./extensions/Particle3D/PU/CCPUOnVelocityObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUObserver.cpp \
./extensions/Particle3D/PU/CCPUSineForceAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUDoExpireEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPURandomiser.cpp \
./extensions/Particle3D/PU/CCPUOnCollisionObserver.cpp \
./extensions/Particle3D/PU/CCPUDoEnableComponentEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPUTextureRotatorTranslator.cpp \
./extensions/Particle3D/PU/CCPUDoExpireEventHandler.cpp \
./extensions/Particle3D/PU/CCPUSphereSurfaceEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUTextureRotator.cpp \
./extensions/Particle3D/PU/CCPUBaseCollider.cpp \
./extensions/Particle3D/PU/CCPUScaleVelocityAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPULineAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPURibbonTrailRender.cpp \
./extensions/Particle3D/PU/CCPUSphereSurfaceEmitter.cpp \
./extensions/Particle3D/PU/CCPUOnPositionObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUParticleFollowerTranslator.cpp \
./extensions/Particle3D/PU/CCPUCollisionAvoidanceAffector.cpp \
./extensions/Particle3D/PU/CCPUGeometryRotatorTranslator.cpp \
./extensions/Particle3D/PU/CCPUDoScaleEventHandler.cpp \
./extensions/Particle3D/PU/CCPUOnClearObserver.cpp \
./extensions/Particle3D/PU/CCPUOnClearObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnCollisionObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUVortexAffector.cpp \
./extensions/Particle3D/PU/CCPUOnTimeObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUBehaviour.cpp \
./extensions/Particle3D/PU/CCPUDoScaleEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPUTechniqueTranslator.cpp \
./extensions/Particle3D/PU/CCPUBaseForceAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUNoise.cpp \
./extensions/Particle3D/PU/CCPUEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPUForceFieldAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUTranslateManager.cpp \
./extensions/Particle3D/PU/CCPUScaleVelocityAffector.cpp \
./extensions/Particle3D/PU/CCPURender.cpp \
./extensions/Particle3D/PU/CCPUMeshSurfaceEmitterTranslator.cpp \
./extensions/Particle3D/PU/CCPUListener.cpp \
./extensions/Particle3D/PU/CCPUGeometryRotator.cpp \
./extensions/Particle3D/PU/CCPUScriptLexer.cpp \
./extensions/Particle3D/PU/CCPUBeamRender.cpp \
./extensions/Particle3D/PU/CCPUSphere.cpp \
./extensions/Particle3D/PU/CCPUDoAffectorEventHandler.cpp \
./extensions/Particle3D/PU/CCPUDoPlacementParticleEventHandlerTranslator.cpp \
./extensions/Particle3D/PU/CCPUAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUPositionEmitter.cpp \
./extensions/Particle3D/PU/CCPULineEmitter.cpp \
./extensions/Particle3D/PU/CCPUBoxCollider.cpp \
./extensions/Particle3D/PU/CCPUPathFollowerTranslator.cpp \
./extensions/Particle3D/PU/CCPURandomiserTranslator.cpp \
./extensions/Particle3D/PU/CCPUVelocityMatchingAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUInterParticleCollider.cpp \
./extensions/Particle3D/PU/CCPUScaleAffector.cpp \
./extensions/Particle3D/PU/CCPUObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUSlaveBehaviourTranslator.cpp \
./extensions/Particle3D/PU/CCPUJetAffector.cpp \
./extensions/Particle3D/PU/CCPUVelocityMatchingAffector.cpp \
./extensions/Particle3D/PU/CCPUGravityAffectorTranslator.cpp \
./extensions/Particle3D/PU/CCPUOnEmissionObserverTranslator.cpp \
./extensions/Particle3D/PU/CCPUEmitter.cpp \
./extensions/Particle3D/PU/CCPUMeshSurfaceEmitter.cpp \
./extensions/Particle3D/PU/CCPUVertexEmitter.cpp \
./extensions/Particle3D/PU/CCPUSineForceAffector.cpp \
./extensions/Particle3D/PU/CCPUSimpleSpline.cpp \
./extensions/Particle3D/PU/CCPUPathFollower.cpp \
./extensions/Particle3D/PU/CCPUDynamicAttributeTranslator.cpp \
./extensions/Particle3D/PU/CCPUBehaviourTranslator.cpp \
./extensions/Particle3D/PU/CCPUFlockCenteringAffector.cpp \
./extensions/Particle3D/CCParticle3DEmitter.cpp \
./extensions/Particle3D/CCParticle3DRender.cpp 


SOURCES_CC=./external/poly2tri/sweep/advancing_front.cc \
./external/poly2tri/sweep/cdt.cc \
./external/poly2tri/sweep/sweep_context.cc \
./external/poly2tri/sweep/sweep.cc \
./external/poly2tri/common/shapes.cc \




SOURCES_C=./external/ConvertUTF/ConvertUTF.c\
./external/recast/fastlz/fastlz.c \
./external/ConvertUTF/ConvertUTF.c \
./external/xxhash/xxhash.c \
./base/ccFPSImages.c


OBJECTS= $(SOURCES:.cpp=.o) 
OBJECST2= $(patsubst %.cc,%.o,$(SOURCES_CC)) 


OBJECTS_C = $(patsubst %.c,%.o,$(SOURCES_C:.c=.o))



%.o: %.cpp 
	@echo " "
	@echo "[CPP] Compiling $<"
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(DEFINES) -c $< -o $@ 
	
# 	
%.o: %.cc
	@echo " "
	@echo "[CC] Compiling $<"
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(DEFINES) -c $< -o $@ 
	
%.o: %.c
	@echo " "
	@echo "[C] Compiling $<"
	$(CC) $(CFLAGS) $(CFLAGS) -c $< -o $@ 
	@echo " "

all: $(OBJECTS) $(OBJECTS_C)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(DEFINES) $^  $(LIBS)    -o $(TARGET)
	
clean:
	find -name "*.o" -exec rm {} \; 
	find -name "*.a" -exec rm {} \; 
	rm $(TARGET) 
