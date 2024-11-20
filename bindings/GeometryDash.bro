// clang-format off

[[link(android)]]
class ButtonPage {
    // ButtonPage();
    virtual ~ButtonPage();
 
    ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint);
 
    bool init(cocos2d::CCArray*, cocos2d::CCPoint);

}

[[link(android)]]
class FontObject {
    // FontObject();
    virtual ~FontObject();
 
    TodoReturn createWithConfigFile(char const*, float);
    TodoReturn getFontWidth(int);
    TodoReturn initWithConfigFile(char const*, float);
    TodoReturn parseConfigFile(char const*, float);

}

// Class Memebers 100% Complete for GameObject except for one named m_unkPos 

[[link(android)]]
class GameObject : CCSprite {
    // GameObject();
    virtual ~GameObject();
 
    GameObject* create(char const* frame);
 
    void addGlow();
    cocos2d::CCParticleSystemQuad* createAndAddParticle(char const* frame, int maybeParticleID);
    
    TodoReturn createObject(char const* frame);


    GameObject* customScaleMod(char const* unkStr);
    void customSetup();
    
    char* frameToKey(char const* frame);
    
    char* getBallFrame(int ID);
    bool getBlendAdditive();
    bool getDontTransform();
    int getEnterEffect();
    gd::string getFrame();
    bool getHasBeenActivated();
    bool getIsDisabled();
    bool getIsInvisible();
    int getM_ID();
    int getObjectKey();
    
   
    cocos2d::CCNode* getObjectParent();

    int getObjectZ();
    float getScaleModX();
    float getScaleModY();
    int getSectionIdx();
    bool getShouldHide();
    bool getShouldSpawn();
    float getSpawnXPos();
    cocos2d::CCPoint getStartPos();
    float getStartRotation();
    float getStartScaleX();
    float getStartScaleY();
    bool getStateVar();
    cocos2d::ccColor3B getTintColor();
    float getTintDuration();
    int getType();
    bool getUsePlayerColor();
    bool init(char const* frame);
    char* keyToFrame(char const* key);


    static GameObject* objectFromString(gd::string str);

    void removeGlow();
    void setObjectColor(cocos2d::ccColor3B objectColor);
    

    void setupTypeFromFrame(char const* frame);

    cocos2d::CCDictionary* stringSetupToDict(gd::string);
    void updateState();
 
    virtual TodoReturn update(float);
 
    virtual void setRotation(float);
 
    virtual void setScaleX(float scaleX);
 
    virtual void setScaleY(float scaleY);
 
    virtual void setPosition(cocos2d::CCPoint const& pos);
 
    virtual void setVisible(bool visible);
 
    virtual void setOpacity(unsigned char opacity);
 
    virtual void setScale(float scale);
 
    virtual void resetObject();
 
    virtual TodoReturn triggerObject();
 
    virtual void activateObject();
 
    virtual void deactivateObject();
 
    virtual cocos2d::CCRect getObjectRect();
 
    virtual cocos2d::CCRect getObjectRect(float, float);
 
    virtual cocos2d::CCPoint getRealPosition();
 
    virtual void setStartPos(cocos2d::CCPoint startPos);
    
    virtual gd::string getSaveString();
 
    virtual void setFlipX(bool flipX);
 
    virtual void setFlipY(bool flipY);
 
    virtual void calculateSpawnXPos();
 
    virtual TodoReturn triggerActivated();
    
    // These two powerOnObject/powerOffObject have to do with the game's Yellow Orbs as apart of RingObject

    virtual void powerOnObject();
 
    virtual void powerOffObject();
 
    virtual void setScaleModX(float scaleModX);
 
    virtual void setScaleModY(float scaleModY);
 
    virtual void setM_ID(int M_ID);
 
    virtual void setSectionIdx(int sectionIdx);
 
    virtual void setStartRotation(float startRotation);
 
    virtual void setStartScaleX(float stateScaleX);
 
    virtual void setStartScaleY(float startScaleY);
 
    virtual void setShouldHide(bool shouldHide);
 
    virtual void setEnterEffect(int enterEffect);
 
    virtual void setTintColor(cocos2d::ccColor3B tintColor);
 
    virtual void setTintDuration(float duration);
 
    virtual void setObjectKey(int objectKey);
 
    virtual void setDontTransform(bool dontTransform);
 
    virtual void setStateVar(bool stateVar);
 
    virtual void setObjectZ(int objectZ);
 
    virtual void setObjectParent(cocos2d::CCNode* objectParent);
    
    
    cocos2d::CCSprite *m_glowSprite;
    bool m_isTriggerObject;
    bool m_maybeRegisterStateObject;
    bool m_powerOnOffObject;

    float m_objectRectWidth;
    float m_objectRectHeight;
    bool m_activateObject;
    bool m_maybeIsInGame;

    cocos2d::CCParticleSystemQuad *m_particleSystem;

    // I don't know what this Position is or Does or is meant to be yet...
    cocos2d::CCPoint m_unkPos;

    float m_scaleModX;
    float m_scaleModY;
    int m_M_ID;
    int m_type;
    int m_sectionIDX;
    bool m_shouldSpawn;


    // It is worth Noting that in this version of the game CCPoint 
    // is a subclass of CCObject and so is CCSize and CCRect
    // and believe me, it's cancer.

    cocos2d::CCPoint m_startPos;
    
    gd::string m_frame;
    bool m_blendAddative;
    bool m_usePlayerColor;
    bool m_isDisabled;
    float m_startRotation;
    float m_startScaleX;
    float m_startScaleY;
    bool m_shouldHide;
    float m_spawnXPos;
    bool m_isInvisible;
    int m_enterEffect;
    cocos2d::ccColor3B m_tintColor;
    float m_tintDuration;
    int m_objectKey;
    bool m_dontTransform;
    bool m_hasBeenActivated;
    bool m_stateVar;
    int m_objectZ;
    cocos2d::CCNode *m_objectParent;

}

[[link(android)]]
class LevelTools {
    TodoReturn artistForAudio(int);
    TodoReturn fbURLForArtist(int);
    TodoReturn getAudioBPM(int);
    TodoReturn getAudioFileName(int);
    TodoReturn getAudioString(int);
    TodoReturn getAudioTitle(int);
    TodoReturn getLevel(int);
    TodoReturn nameForArtist(int);
    TodoReturn ngURLForArtist(int);
    TodoReturn urlForAudio(int);
    TodoReturn ytURLForArtist(int);

}

[[link(android)]]
class PauseLayer {
    // PauseLayer();
    virtual ~PauseLayer();
 
    PauseLayer* create();
 
    TodoReturn onAutoCheck();
    TodoReturn onEdit();
    TodoReturn onFX();
    TodoReturn onHelp();
    TodoReturn onMusic();
    TodoReturn onNormalMode();
    TodoReturn onPracticeMode();
    TodoReturn onQuit();
    TodoReturn onRestart();
    TodoReturn onResume();
    TodoReturn setupProgressBars();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class PriceLabel {
    // PriceLabel();
    virtual ~PriceLabel();
 
    PriceLabel* create(int);
 
    bool init(int);
    void setColor(cocos2d::ccColor3B);
    void setOpacity(float);
    void setPrice(int);

}

[[link(android)]]
class RingObject {
    // RingObject();
    virtual ~RingObject();
 
    RingObject* create(char const*);
 
    bool init(char const*);
    TodoReturn spawnCircle();
    TodoReturn updateColors(cocos2d::ccColor3B);
 
    virtual void setPosition(cocos2d::CCPoint const&);
 
    virtual void setVisible(bool);
 
    virtual void setScale(float);
 
    virtual TodoReturn resetObject();
 
    virtual TodoReturn triggerActivated();
 
    virtual TodoReturn powerOnObject();
 
    virtual TodoReturn powerOffObject();

}

[[link(android)]]
class SongObject {
    // SongObject();
    virtual ~SongObject();
 
    SongObject* create(int);
 
    TodoReturn getAudioTrack();
    bool init(int);

}

[[link(android)]]
class SongsLayer {
    // SongsLayer();
    virtual ~SongsLayer();
 
    SongsLayer* create();
 
    virtual TodoReturn customSetup();

}

[[link(android)]]
class StatsLayer {
    // StatsLayer();
    virtual ~StatsLayer();
 
    StatsLayer* create();
 
    virtual TodoReturn customSetup();

}

[[link(android)]]
class UndoObject {
    // UndoObject();
    virtual ~UndoObject();
 
    UndoObject* create(GameObject*, UndoCommand);
 
    TodoReturn getCommand();
    TodoReturn getObject();
    bool init(GameObject*, UndoCommand);

}

[[link(android)]]
class AppDelegate {
    // AppDelegate();
    ~AppDelegate();
 
    TodoReturn checkSound();
    TodoReturn get();
    TodoReturn getIsIOS();
    TodoReturn getLoadingFinished();
    TodoReturn getManagersLoaded();
    TodoReturn getPaused();
    TodoReturn getScenePointer();
    TodoReturn hideLoadingCircle();
    TodoReturn loadingIsFinished();
    TodoReturn pauseGame();
    TodoReturn resumeSound();
    TodoReturn showLoadingCircle(bool, bool, bool);
    TodoReturn trySaveGame();
 
    virtual TodoReturn applicationDidFinishLaunching();
 
    virtual TodoReturn applicationDidEnterBackground();
 
    virtual TodoReturn applicationWillEnterForeground();
 
    virtual TodoReturn applicationWillResignActive();
 
    virtual TodoReturn willSwitchToScene(cocos2d::CCScene*);
 
    virtual void setPaused(bool);
 
    virtual void setScenePointer(cocos2d::CCNode*);
 
    virtual void setManagersLoaded(bool);

}

[[link(android)]]
class CCCountdown {
    // CCCountdown();
    virtual ~CCCountdown();
 
    CCCountdown* create();
 
    TodoReturn lapFinished();
    TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);
 
    virtual void setOpacity(unsigned char);
 
    virtual bool init();

}

[[link(android)]]
class CCIndexPath {
    // CCIndexPath();
    // CCIndexPath(CCIndexPath const&);
    CCIndexPath(int, int);
    virtual ~CCIndexPath();
 
    TodoReturn CCIndexPathWithSectionRow(int, int);

}

[[link(android)]]
class CCTableView {
    CCTableView(cocos2d::CCRect);
    virtual ~CCTableView();
 
    CCTableView* create(CCTableViewDelegate*, CCTableViewDataSource*, cocos2d::CCRect);
 
    TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn cellForRowAtIndexPath(CCIndexPath&);
    TodoReturn cellForTouch(cocos2d::CCTouch*);
    TodoReturn checkBoundaryOfCell(CCTableViewCell*);
    TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
    TodoReturn checkBoundaryOfContent(float);
    TodoReturn checkFirstCell(CCTableViewCell*);
    TodoReturn checkLastCell(CCTableViewCell*);
    TodoReturn claimTouch(cocos2d::CCTouch*);
    TodoReturn deleteCCTableViewCell(CCTableViewCell*);
    TodoReturn dequeueReusableCellWithIdentifier(char const*);
    TodoReturn getBeginLocation();
    TodoReturn getBeginTouch();
    TodoReturn getCellRemovedArray();
    TodoReturn getCellVisibleArray();
    TodoReturn getCheckLocation();
    TodoReturn getClipsToBounds();
    TodoReturn getDataSource();
    TodoReturn getDelegate();
    TodoReturn getEditable();
    TodoReturn getIsScheduled();
    TodoReturn getIsTouch();
    TodoReturn getLastCellPos();
    TodoReturn getScrollingToIndexPath();
    TodoReturn getStealTouches();
    TodoReturn getTouchCell();
    TodoReturn getTouchDispatch();
    TodoReturn getindexPathAddedArray();
    TodoReturn initCCTableViewCells();
    bool isDuplicateInVisibleCellArray(CCIndexPath*);
    bool isDuplicateIndexPath(CCIndexPath&);
    TodoReturn reloadData();
    TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
    TodoReturn scrollToIndexPath(CCIndexPath&);
    TodoReturn touchFinish(cocos2d::CCTouch*);
 
    virtual TodoReturn onEnter();
 
    virtual TodoReturn onExit();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual void setIsTouch(bool);
 
    virtual void setClipsToBounds(bool);
 
    virtual void setTouchDispatch(bool);
 
    virtual void setIsScheduled(bool);
 
    virtual void setBeginTouch(cocos2d::CCTouch*);
 
    virtual void setBeginLocation(cocos2d::CCPoint);
 
    virtual void setLastCellPos(cocos2d::CCPoint);
 
    virtual void setCheckLocation(cocos2d::CCPoint);
 
    virtual void setTouchCell(CCTableViewCell*);
 
    virtual void setEditable(bool);
 
    virtual void setCellVisibleArray(cocos2d::CCArray*);
 
    virtual void setCellRemovedArray(cocos2d::CCArray*);
 
    virtual TodoReturn setindexPathAddedArray(cocos2d::CCArray*);
 
    virtual void setDelegate(CCTableViewDelegate*);
 
    virtual void setDataSource(CCTableViewDataSource*);
 
    virtual void setScrollingToIndexPath(CCIndexPath*);
 
    virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
 
    virtual void setStealTouches(bool);

}

[[link(android)]]
class frameValues {
    // frameValues();
    // frameValues(frameValues const&);
    ~frameValues();

}

[[link(android)]]
class GameManager {
    // GameManager();
    virtual ~GameManager();
 
    TodoReturn sharedState();
 
    TodoReturn applicationDidEnterBackground();
    TodoReturn applicationWillEnterForeground();
    TodoReturn claimItemsResponse(gd::string);
    TodoReturn colorForIdx(int);
    TodoReturn colorKey(int, bool);
    TodoReturn completedAchievement(char const*);
    TodoReturn eventUnlockFeature(char const*);
    TodoReturn fadeInMusic(char const*);
    TodoReturn getAutoCheckpoints();
    TodoReturn getClickedEditor();
    TodoReturn getClickedGarage();
    TodoReturn getClickedName();
    TodoReturn getDidRateGame();
    TodoReturn getEditMode();
    TodoReturn getFirstSetup();
    TodoReturn getFxEnabled();
    TodoReturn getGameCenterEnabled();
    TodoReturn getLastScene();
    TodoReturn getLevelKey(int, int);
    TodoReturn getLevelSelectLayer();
    TodoReturn getMainMenuActive();
    TodoReturn getMusicEnabled();
    TodoReturn getNextLevel(int, int);
    TodoReturn getPlayLayer();
    TodoReturn getPlayerColor();
    TodoReturn getPlayerColor2();
    TodoReturn getPlayerFrame();
    TodoReturn getPlayerName();
    TodoReturn getPlayerUDID();
    TodoReturn getPremiumPopup();
    TodoReturn getRateDelegate();
    TodoReturn getResultForLevel(int, int);
    TodoReturn getReturnToSearch();
    TodoReturn getShowBPMMarkers();
    TodoReturn getShowSongMarkers();
    TodoReturn getShowedEditorGuide();
    TodoReturn getShowedFirstTutorial();
    TodoReturn getWasHigh();
    TodoReturn highestLevelForType(int);
    TodoReturn iconKey(int);
    bool init();
    bool isColorUnlocked(int, bool);
    bool isIconUnlocked(int);
    TodoReturn itemPurchased(char const*);
    TodoReturn levelIsPremium(int, int);
    TodoReturn openEditorGuide();
    TodoReturn rateGame();
    TodoReturn reactivateTutorial();
    TodoReturn registerLevelResult(int, int, int);
    TodoReturn reportAchievementWithID(char const*, int);
    TodoReturn reportPercentageForLevel(int, int, bool);
    TodoReturn resetMusic();
    TodoReturn returnToLastScene(GJGameLevel*);
    TodoReturn shouldShowTutorial(int);
    TodoReturn showInterstitial();
    TodoReturn showMainMenuAd();
    TodoReturn showTutorial();
    TodoReturn syncGCAchievements();
    TodoReturn toggleFX();
    TodoReturn toggleMusic();
    TodoReturn unlockColor(int, bool);
    TodoReturn unlockIcon(int);
    TodoReturn unlockedPremium();
    TodoReturn updateHighest(int, int);
    TodoReturn updateMusicVolume();
 
    virtual TodoReturn setup();
 
    virtual TodoReturn encodeDataTo(DS_Dictionary*);
 
    virtual TodoReturn dataLoaded(DS_Dictionary*);
 
    virtual TodoReturn firstLoad();
 
    virtual void setPlayLayer(PlayLayer*);
 
    virtual void setLevelSelectLayer(LevelSelectLayer*);
 
    virtual void setMainMenuActive(bool);
 
    virtual void setPremiumPopup(PremiumPopup*);
 
    virtual void setGameCenterEnabled(bool);
 
    virtual void setFirstSetup(bool);
 
    virtual void setShowedFirstTutorial(bool);
 
    virtual void setPlayerUDID(gd::string);
 
    virtual void setPlayerName(gd::string);
 
    virtual void setDidRateGame(bool);
 
    virtual void setWasHigh(bool);
 
    virtual void setEditMode(bool);
 
    virtual void setLastScene(LastGameScene);
 
    virtual void setReturnToSearch(bool);
 
    virtual void setPlayerFrame(int);
 
    virtual void setPlayerColor(int);
 
    virtual void setPlayerColor2(int);
 
    virtual void setAutoCheckpoints(bool);
 
    virtual void setShowSongMarkers(bool);
 
    virtual void setShowBPMMarkers(bool);
 
    virtual void setClickedGarage(bool);
 
    virtual void setClickedEditor(bool);
 
    virtual void setClickedName(bool);
 
    virtual void setShowedEditorGuide(bool);
 
    virtual void setRateDelegate(GameRateDelegate*);

}

[[link(android)]]
class GameToolbox {
    TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint);
    TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
    TodoReturn doWeHaveInternet();
    TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
    TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
    TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
    bool isIOS();
    TodoReturn openRateURL(gd::string, gd::string);
    TodoReturn postClipVisit();
    TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect, cocos2d::CCNode*);

}

[[link(android)]]
class GJGameLevel {
    // GJGameLevel();
    virtual ~GJGameLevel();
 
    GJGameLevel* create();
    GJGameLevel* create(cocos2d::CCDictionary*);
 
    TodoReturn createWithCoder(DS_Dictionary*);
    TodoReturn getAttempts();
    TodoReturn getAudioTrack();
    TodoReturn getAverageDifficulty();
    TodoReturn getCompletes();
    TodoReturn getDifficulty();
    TodoReturn getDownloads();
    TodoReturn getGameVersion();
    TodoReturn getIsEditable();
    TodoReturn getIsUploaded();
    TodoReturn getIsVerified();
    TodoReturn getLastCameraPos();
    TodoReturn getLastEditorZoom();
    TodoReturn getLengthKey(int);
    TodoReturn getLevelDesc();
    TodoReturn getLevelID();
    TodoReturn getLevelLength();
    TodoReturn getLevelName();
    TodoReturn getLevelString();
    TodoReturn getLevelType();
    TodoReturn getLevelVersion();
    TodoReturn getLikes();
    TodoReturn getM_ID();
    TodoReturn getNormalPercent();
    TodoReturn getPracticePercent();
    TodoReturn getRatings();
    TodoReturn getRatingsSum();
    TodoReturn getUserID();
    TodoReturn getUserName();
    bool init();
    TodoReturn lengthKeyToString(int);
    TodoReturn levelWasAltered();
    TodoReturn levelWasSubmitted();
    TodoReturn savePercentage(int, bool);
 
    virtual TodoReturn encodeWithCoder(DS_Dictionary*);
 
    virtual TodoReturn canEncode();
 
    virtual void setLevelID(int);
 
    virtual void setLevelName(gd::string);
 
    virtual void setLevelDesc(gd::string);
 
    virtual void setLevelString(gd::string);
 
    virtual void setUserName(gd::string);
 
    virtual void setUserID(int);
 
    virtual void setDifficulty(int);
 
    virtual void setAudioTrack(int);
 
    virtual void setRatings(int);
 
    virtual void setRatingsSum(int);
 
    virtual void setDownloads(int);
 
    virtual void setCompletes(int);
 
    virtual void setIsEditable(bool);
 
    virtual void setIsVerified(bool);
 
    virtual void setIsUploaded(bool);
 
    virtual void setLevelVersion(int);
 
    virtual void setGameVersion(int);
 
    virtual void setAttempts(int);
 
    virtual void setNormalPercent(int);
 
    virtual void setPracticePercent(int);
 
    virtual void setLikes(int);
 
    virtual void setLevelLength(int);
 
    virtual void setLastCameraPos(cocos2d::CCPoint);
 
    virtual void setLastEditorZoom(float);
 
    virtual void setLevelType(GJLevelType);

}

[[link(android)]]
class GJListLayer {
    // GJListLayer();
    virtual ~GJListLayer();
 
    GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float);
 
    bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float);

}

[[link(android)]]
class SliderThumb {
    // SliderThumb();
    virtual ~SliderThumb();
 
    SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_CallFuncO, char const*, char const*);
 
    TodoReturn getValue();
    bool init(cocos2d::CCNode*, cocos2d::SEL_CallFuncO, char const*, char const*);
    void setValue(float);

}

[[link(android)]]
class StatsObject {
    // StatsObject();
    virtual ~StatsObject();
 
    StatsObject* create(char const*, int);
 
    TodoReturn getKey();
    TodoReturn getValue();
    bool init(char const*, int);

}

[[link(android)]]
class UploadPopup {
    // UploadPopup();
    virtual ~UploadPopup();
 
    UploadPopup* create(GJGameLevel*);
 
    bool init(GJGameLevel*);
    TodoReturn onBack();
    TodoReturn onClose();
    TodoReturn onReturnToLevel();
 
    virtual TodoReturn show();
 
    virtual TodoReturn keyBackClicked();
 
    virtual TodoReturn levelUploadFinished(GJGameLevel*);
 
    virtual TodoReturn levelUploadFailed(GJGameLevel*);

}

[[link(android)]]
class BoomListView {
    // BoomListView();
    virtual ~BoomListView();
 
    BoomListView* create(cocos2d::CCArray*, float, float, int, BoomListType);
 
    bool init(cocos2d::CCArray*, float, float, int, BoomListType);
 
    virtual TodoReturn draw();
 
    virtual TodoReturn setupList();
 
    virtual TodoReturn ccTableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, CCTableViewCell*, CCTableView*);
 
    virtual TodoReturn cellHeightForRowAtIndexPath(CCIndexPath&, CCTableView*);
 
    virtual TodoReturn didSelectRowAtIndexPath(CCIndexPath&, CCTableView*);
 
    virtual TodoReturn numberOfRowsInSection(unsigned int, CCTableView*);
 
    virtual TodoReturn numberOfSectionsInCCTableView(CCTableView*);
 
    virtual TodoReturn cellForRowAtIndexPath(CCIndexPath&, CCTableView*);
 
    virtual TodoReturn ccTableViewCommitCellEditingStyleForRowAtIndexPath(CCTableView*, CCTableViewCellEditingStyle, CCIndexPath&);
 
    virtual TodoReturn ccTableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, CCTableViewCell*, CCTableView*);
 
    virtual TodoReturn getListCell(char const*);
 
    virtual TodoReturn loadCell(CCTableViewCell*, int);

}

[[link(android)]]
class ButtonSprite {
    // ButtonSprite();
    virtual ~ButtonSprite();
 
    ButtonSprite* create(char const*);
    ButtonSprite* create(char const*, float);
    ButtonSprite* create(char const*, int, int, float, bool);
    ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
    ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float);
    ButtonSprite* create(cocos2d::CCSprite*);
    ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
    ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*);
 
    bool init(char const*, int, int, float, bool, char const*, char const*, float);
    bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*);
    void setColor(cocos2d::ccColor3B);
    void setString(char const*);
    TodoReturn updateBGImage(char const*);
    TodoReturn updateSpriteBGSize();

}

[[link(android)]]
class CCBlockLayer {
    // CCBlockLayer();
    virtual ~CCBlockLayer();
 
    CCBlockLayer* create();
 
    TodoReturn getRemoveOnExit();
 
    virtual TodoReturn draw();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual bool init();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn enterLayer();
 
    virtual TodoReturn exitLayer();
 
    virtual TodoReturn showLayer(bool);
 
    virtual TodoReturn hideLayer(bool);
 
    virtual TodoReturn layerVisible();
 
    virtual TodoReturn layerHidden();
 
    virtual TodoReturn enterAnimFinished();
 
    virtual TodoReturn disableUI();
 
    virtual TodoReturn enableUI();
 
    virtual TodoReturn keyBackClicked();
 
    virtual void setRemoveOnExit(bool);

}

[[link(android)]]
class CCCircleWave {
    // CCCircleWave();
    virtual ~CCCircleWave();
 
    CCCircleWave* create(float, float, float, bool);
 
    TodoReturn baseSetup(float);
    TodoReturn followObject(cocos2d::CCNode*);
    TodoReturn getCircleMode();
    TodoReturn getColor();
    TodoReturn getLineWidth();
    TodoReturn getOpacity();
    TodoReturn getOpacityMod();
    TodoReturn getRadius();
    TodoReturn getWidth();
    bool init(float, float, float, bool);
    TodoReturn updatePosition();
 
    virtual TodoReturn getPosition();
 
    virtual TodoReturn draw();
 
    virtual TodoReturn updateTweenAction(float, char const*);
 
    virtual void setWidth(float);
 
    virtual void setRadius(float);
 
    virtual void setOpacity(float);
 
    virtual void setColor(cocos2d::ccColor3B);
 
    virtual void setPosition(cocos2d::CCPoint);
 
    virtual void setCircleMode(CircleMode);
 
    virtual void setLineWidth(int);
 
    virtual void setOpacityMod(float);

}

[[link(android)]]
class CCLightFlash {
    // CCLightFlash();
    virtual ~CCLightFlash();
 
    CCLightFlash* create();
 
    TodoReturn cleanupFlash();
    TodoReturn fadeAndRemove();
    TodoReturn getFlashP();
    TodoReturn getFlashZ();
    bool init();
    TodoReturn playEffect(cocos2d::CCPoint, cocos2d::ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
    TodoReturn removeLights();
    TodoReturn showFlash();
 
    virtual void setFlashP(cocos2d::CCNode*);
 
    virtual void setFlashZ(int);

}

[[link(android)]]
class CCLightStrip {
    // CCLightStrip();
    virtual ~CCLightStrip();
 
    CCLightStrip* create(float, float, float, float, float);
 
    TodoReturn getColor();
    TodoReturn getHeight();
    TodoReturn getOpacity();
    TodoReturn getWidth();
    bool init(float, float, float, float, float);
 
    virtual TodoReturn draw();
 
    virtual TodoReturn updateTweenAction(float, char const*);
 
    virtual void setColor(cocos2d::ccColor3B);
 
    virtual void setOpacity(float);
 
    virtual void setWidth(float);
 
    virtual void setHeight(float);

}

[[link(android)]]
class CCSpritePart {
    TodoReturn getBeingUsed();
    TodoReturn hideInactive();
    void setBeingUsed(float);

}

[[link(android)]]
class CreatorLayer {
    // CreatorLayer();
    virtual ~CreatorLayer();
 
    CreatorLayer* create();
 
    bool init();
    TodoReturn onBack();
    TodoReturn onFeaturedLevels();
    TodoReturn onMyLevels();
    TodoReturn onOnlineLevels();
    TodoReturn onSavedLevels();
    TodoReturn scene();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class FLAlertLayer {
    // FLAlertLayer();
    virtual ~FLAlertLayer();
 
    FLAlertLayer* create(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*);
    FLAlertLayer* create(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*, float);
 
    TodoReturn getInternalLayer();
    TodoReturn getPParent();
    TodoReturn getReverseKeyBack();
    TodoReturn getTargetScene();
    bool init(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*, float);
    TodoReturn onBtn1();
    TodoReturn onBtn2();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual TodoReturn show();
 
    virtual TodoReturn keyBackClicked();
 
    virtual void setPParent(FLAlertLayerProtocol*);
 
    virtual void setTargetScene(cocos2d::CCNode*);
 
    virtual void setReverseKeyBack(bool);

}

[[link(android)]]
class LoadingLayer {
    // LoadingLayer();
    virtual ~LoadingLayer();
 
    TodoReturn getLoadingString();
    bool init();
    TodoReturn loadAssets();
    TodoReturn loadingFinished();
    TodoReturn node();
    TodoReturn scene();
    TodoReturn updateProgress(int);

}

[[link(android)]]
class OpenSLEngine {
    // OpenSLEngine();
    ~OpenSLEngine();
 
    TodoReturn closeEngine();
    TodoReturn createEngine(void*);
    TodoReturn getEffectState(unsigned int);
    TodoReturn getEffectsVolume();
    TodoReturn preloadEffect(char const*);
    TodoReturn recreatePlayer(char const*);
    TodoReturn resumeAllEffects();
    TodoReturn resumeEffect(unsigned int);
    void setAllEffectState(int);
    void setEffectLooping(unsigned int, bool);
    void setEffectState(unsigned int, int, bool);
    void setEffectsVolume(float);
    TodoReturn unloadEffect(char const*);

}

[[link(android)]]
class OptionsLayer {
    // OptionsLayer();
    virtual ~OptionsLayer();
 
    OptionsLayer* create();
 
    TodoReturn onFX();
    TodoReturn onGC();
    TodoReturn onHelp();
    TodoReturn onMusic();
    TodoReturn onRate();
    TodoReturn onSoundtracks();
    TodoReturn onSupport();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn exitLayer();
 
    virtual TodoReturn layerHidden();
 
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

}

[[link(android)]]
class PlayerObject {
    // PlayerObject();
    virtual ~PlayerObject();
 
    PlayerObject* create(int, cocos2d::CCLayer*);
 
    TodoReturn activateStreak();
    TodoReturn checkSnapJumpToObject(GameObject*);
    TodoReturn collidedWithObject(float, GameObject*);
    TodoReturn deactivateParticle();
    TodoReturn deactivateStreak();
    TodoReturn flipGravity(bool);
    TodoReturn flipMod();
    TodoReturn getFlyMode();
    TodoReturn getGameLayer();
    TodoReturn getGravityFlipped();
    TodoReturn getHasJumped();
    TodoReturn getHasRingJumped();
    TodoReturn getIsDead();
    TodoReturn getIsLocked();
    TodoReturn getLastGroundPos();
    TodoReturn getLastP();
    TodoReturn getOnGround();
    TodoReturn getPortalObject();
    TodoReturn getPortalP();
    TodoReturn getTouchedRing();
    TodoReturn gravityDown();
    TodoReturn gravityUp();
    TodoReturn hitGround(bool);
    bool init(int, cocos2d::CCLayer*);
    TodoReturn loadFromCheckpoint(CheckpointObject*);
    TodoReturn lockPlayer();
    TodoReturn logValues();
    TodoReturn playerDestroyed();
    TodoReturn playerIsFalling();
    TodoReturn propellPlayer();
    TodoReturn pushButton(PlayerButton);
    TodoReturn releaseButton(PlayerButton);
    TodoReturn removePendingCheckpoint();
    TodoReturn resetStreak();
    TodoReturn ringJump();
    TodoReturn runRotateAction();
    TodoReturn saveToCheckpoint(CheckpointObject*);
    void setSecondColor(cocos2d::ccColor3B const&);
    TodoReturn spawnCircle();
    TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float);
    TodoReturn speedDown();
    TodoReturn speedUp();
    TodoReturn stopRotation();
    TodoReturn toggleFlyMode(bool);
    TodoReturn toggleGhostEffect(GhostType);
    TodoReturn touchedObject(GameObject*);
    TodoReturn tryPlaceCheckpoint();
    TodoReturn updateJump(float);
    TodoReturn updatePlayerFrame(int);
    TodoReturn updateShipRotation();
    TodoReturn yStartDown();
    TodoReturn yStartUp();
 
    virtual TodoReturn update(float);
 
    virtual void setOpacity(unsigned char);
 
    virtual void setColor(cocos2d::ccColor3B const&);
 
    virtual TodoReturn resetObject();
 
    virtual TodoReturn getRealPosition();
 
    virtual void setLastP(cocos2d::CCPoint);
 
    virtual void setPortalP(cocos2d::CCPoint);
 
    virtual void setGameLayer(cocos2d::CCLayer*);
 
    virtual void setOnGround(bool);
 
    virtual void setTouchedRing(GameObject*);
 
    virtual void setPortalObject(GameObject*);

}

[[link(android)]]
class SearchButton {
    // SearchButton();
    virtual ~SearchButton();
 
    SearchButton* create(char const*, char const*, float, char const*);
 
    TodoReturn getLabel();
    TodoReturn getSprite();
    bool init(char const*, char const*, float, char const*);

}

[[link(android)]]
class SlideInLayer {
    // SlideInLayer();
    virtual ~SlideInLayer();
 
    SlideInLayer* create();
 
    TodoReturn getDelegate();
    TodoReturn getRemoveOnExit();
 
    virtual TodoReturn draw();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual bool init();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn enterLayer();
 
    virtual TodoReturn exitLayer();
 
    virtual TodoReturn showLayer(bool);
 
    virtual TodoReturn hideLayer(bool);
 
    virtual TodoReturn layerVisible();
 
    virtual TodoReturn layerHidden();
 
    virtual TodoReturn enterAnimFinished();
 
    virtual TodoReturn disableUI();
 
    virtual TodoReturn enableUI();
 
    virtual TodoReturn keyBackClicked();
 
    virtual void setDelegate(SlideInLayerDelegate*);
 
    virtual void setRemoveOnExit(bool);

}

[[link(android)]]
class StoreToolbox {
    TodoReturn doICheck();
    bool isBillingSupported();
    TodoReturn purchaseItem(char const*);
    TodoReturn restorePurchases();
    TodoReturn setupStore();

}

[[link(android)]]
class SupportLayer {
    // SupportLayer();
    virtual ~SupportLayer();
 
    SupportLayer* create();
 
    TodoReturn onCocos2d();
    TodoReturn onEmail();
    TodoReturn onRobTop();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn exitLayer();

}

[[link(android)]]
class BonusDropdown {
    // BonusDropdown();
    virtual ~BonusDropdown();
 
    BonusDropdown* create(gd::string, int);
 
    TodoReturn getTargetScene();
    bool init(gd::string, int);
    TodoReturn show();
 
    virtual void setTargetScene(cocos2d::CCNode*);

}

[[link(android)]]
class BoomListLayer {
    // BoomListLayer();
    virtual ~BoomListLayer();
 
    BoomListLayer* create(BoomListView*, char const*);
 
    bool init(BoomListView*, char const*);

}

[[link(android)]]
class CCAlertCircle {
    // CCAlertCircle();
    virtual ~CCAlertCircle();
 
    CCAlertCircle* create();
 
    TodoReturn getCircle();
    bool init();
 
    virtual TodoReturn draw();

}

[[link(android)]]
class CCCircleAlert {
    // CCCircleAlert();
    virtual ~CCCircleAlert();
 
    CCCircleAlert* create(float, float, float);
 
    bool init(float, float, float);

}

[[link(android)]]
class CocosDenshion::SimpleAudioEngine {
    ~SimpleAudioEngine();
 
    TodoReturn sharedEngine();
 
    TodoReturn SimpleAudioEngine();
    TodoReturn end();
    TodoReturn getBackgroundMusicVolume();
    TodoReturn getEffectsVolume();
    bool isBackgroundMusicPlaying();
    TodoReturn pauseAllEffects();
    TodoReturn pauseBackgroundMusic();
    TodoReturn pauseEffect(unsigned int);
    TodoReturn playBackgroundMusic(char const*, bool);
    TodoReturn playEffect(char const*, bool, float, float, float);
    TodoReturn preloadBackgroundMusic(char const*);
    TodoReturn preloadEffect(char const*);
    TodoReturn resumeAllEffects();
    TodoReturn resumeBackgroundMusic();
    TodoReturn resumeEffect(unsigned int);
    TodoReturn rewindBackgroundMusic();
    void setBackgroundMusicTime(float);
    void setBackgroundMusicVolume(float);
    void setEffectsVolume(float);
    TodoReturn stopAllEffects();
    TodoReturn stopBackgroundMusic(bool);
    TodoReturn stopEffect(unsigned int);
    TodoReturn unloadEffect(char const*);
    TodoReturn willPlayBackgroundMusic();

}

[[link(android)]]
class DrawGridLayer {
    // DrawGridLayer();
    virtual ~DrawGridLayer();
 
    DrawGridLayer* create(cocos2d::CCNode*);
 
    TodoReturn addToEffects(GameObject*);
    bool init(cocos2d::CCNode*);
    TodoReturn loadBPM(float);
    TodoReturn loadMarkers(gd::string);
    TodoReturn loadTimeMarkers(gd::string);
    TodoReturn removeFromEffects(GameObject*);
 
    virtual TodoReturn draw();

}

[[link(android)]]
class DS_Dictionary {
    // DS_Dictionary();
    ~DS_Dictionary();
 
    TodoReturn cleanStringWhiteSpace(gd::string const&);
    TodoReturn decodeObjectForKey(char const*);
    TodoReturn getAllKeys();
    TodoReturn getArrayForKey(char const*);
    TodoReturn getBoolForKey(char const*);
    TodoReturn getDictForKey(char const*);
    TodoReturn getFloatForKey(char const*);
    TodoReturn getIndexOfKey(char const*);
    TodoReturn getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    TodoReturn getIntegerForKey(char const*);
    TodoReturn getKey(unsigned int);
    TodoReturn getNumKeys();
    TodoReturn getObjectForKey(char const*);
    TodoReturn getRectArrayForKey(char const*);
    TodoReturn getRectForKey(char const*);
    TodoReturn getStringArrayForKey(char const*);
    TodoReturn getStringForKey(char const*);
    TodoReturn getVec2ArrayForKey(char const*);
    TodoReturn getVec2ForKey(char const*);
    TodoReturn loadRootSubDictFromFile(char const*);
    TodoReturn loadRootSubDictFromString(gd::string);
    TodoReturn rectFromString(gd::string const&, cocos2d::CCRect&);
    TodoReturn removeAllKeys();
    TodoReturn removeKey(char const*);
    TodoReturn removeKey(unsigned int);
    TodoReturn saveRootSubDictToFile(char const*);
    TodoReturn saveRootSubDictToString();
    void setArrayForKey(char const*, cocos2d::CCArray*);
    void setBoolForKey(char const*, bool);
    void setBoolForKey(char const*, bool, bool);
    void setDictForKey(char const*, cocos2d::CCDictionary*);
    void setFloatForKey(char const*, float);
    void setFloatForKey(char const*, float, bool);
    void setIntegerForKey(char const*, int);
    void setIntegerForKey(char const*, int, bool);
    void setObjectForKey(char const*, cocos2d::CCObject*);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool);
    void setRectForKey(char const*, cocos2d::CCRect const&);
    void setRectForKey(char const*, cocos2d::CCRect const&, bool);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool);
    void setStringForKey(char const*, gd::string const&);
    void setStringForKey(char const*, gd::string const&, bool);
    void setSubDictForKey(char const*);
    void setSubDictForKey(char const*, bool);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool);
    TodoReturn split(gd::string const&, char const*, gd::vector<gd::string>&);
    TodoReturn splitWithForm(gd::string const&, gd::vector<gd::string>&);
    TodoReturn stepBackToRootSubDict();
    TodoReturn stepIntoSubDictWithKey(char const*);
    TodoReturn stepOutOfSubDict();
    TodoReturn vec2FromString(gd::string const&, cocos2d::CCPoint&);

}

[[link(android)]]
class EditButtonBar {
    // EditButtonBar();
    virtual ~EditButtonBar();
 
    EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint);
 
    bool init(cocos2d::CCArray*, cocos2d::CCPoint);
    TodoReturn onLeft();
    TodoReturn onRight();

}

[[link(android)]]
class EndLevelLayer {
    // EndLevelLayer();
    virtual ~EndLevelLayer();
 
    EndLevelLayer* create();
 
    TodoReturn getEndText();
    TodoReturn onMenu();
    TodoReturn onReplay();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn exitLayer();
 
    virtual TodoReturn showLayer(bool);

}

[[link(android)]]
class ExtendedLayer {
    // ExtendedLayer();
    virtual ~ExtendedLayer();
 
    ExtendedLayer* create();
 
    TodoReturn getDelegate();
    bool init();
 
    virtual void setPosition(cocos2d::CCPoint const&);
 
    virtual void setDelegate(BoomScrollLayerDelegate*);

}

[[link(android)]]
class FileOperation {
    TodoReturn getFilePath();
    TodoReturn readFile();
    TodoReturn saveFile();

}

[[link(android)]]
class GJGarageLayer {
    // GJGarageLayer();
    virtual ~GJGarageLayer();
 
    TodoReturn checkColor(int, bool);
    TodoReturn checkIcon(int);
    TodoReturn descriptionForUnlock(int, UnlockType);
    bool init();
    TodoReturn node();
    TodoReturn onBack();
    TodoReturn onPlayerColor1(cocos2d::CCNode*);
    TodoReturn onPlayerColor2(cocos2d::CCNode*);
    TodoReturn onPlayerIcon(cocos2d::CCNode*);
    TodoReturn scene();
    TodoReturn setupColorSelect();
    TodoReturn setupPlayerSelect();
    TodoReturn showUnlockPopup(int, UnlockType);
    TodoReturn updatePlayerColors();
    TodoReturn updatePlayerName(char const*);
 
    virtual TodoReturn textInputOpened(CCTextInputNode*);
 
    virtual TodoReturn textInputClosed(CCTextInputNode*);
 
    virtual TodoReturn textChanged(CCTextInputNode*);
 
    virtual TodoReturn updateRate();
 
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class LoadingCircle {
    // LoadingCircle();
    virtual ~LoadingCircle();
 
    LoadingCircle* create();
 
    TodoReturn fadeAndRemove();
    TodoReturn getCircle();
    TodoReturn getDarkOverlay();
    TodoReturn getTargetScene();
    TodoReturn show();
 
    virtual TodoReturn draw();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual bool init();
 
    virtual void setTargetScene(cocos2d::CCNode*);
 
    virtual void setDarkOverlay(bool);

}

[[link(android)]]
class MenuGameLayer {
    // MenuGameLayer();
    virtual ~MenuGameLayer();
 
    MenuGameLayer* create();
 
    bool init();
    TodoReturn tryJump();
 
    virtual TodoReturn update(float);

}

[[link(android)]]
class MyLevelsLayer {
    // MyLevelsLayer();
    virtual ~MyLevelsLayer();
 
    MyLevelsLayer* create();
 
    bool init();
    TodoReturn onBack();
    TodoReturn onNew();
    TodoReturn scene();
    TodoReturn setupLevelBrowser();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class ObjectManager {
    // ObjectManager();
    virtual ~ObjectManager();
 
    TodoReturn animLoaded(char const*);
    TodoReturn getDefinition(char const*);
    TodoReturn getGlobalAnimCopy(char const*);
    bool init();
    TodoReturn instance();
    TodoReturn loadCopiedAnimations();
    TodoReturn loadCopiedSets();
    TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
    void setLoaded(char const*);
    TodoReturn setup();

}

[[link(android)]]
class SongInfoLayer {
    // SongInfoLayer();
    virtual ~SongInfoLayer();
 
    SongInfoLayer* create(SongObject*);
 
    bool init(SongObject*);
    TodoReturn onClose();
    TodoReturn onDownload();
    TodoReturn onFB();
    TodoReturn onNG();
    TodoReturn onYT();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class TutorialLayer {
    // TutorialLayer();
    virtual ~TutorialLayer();
 
    TutorialLayer* create();
 
    TodoReturn loadPage(int);
    TodoReturn onClose();
    TodoReturn onNext();
 
    virtual bool init();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class TutorialPopup {
    // TutorialPopup();
    virtual ~TutorialPopup();
 
    TutorialPopup* create(char const*);
 
    TodoReturn animateMenu();
    TodoReturn closeTutorial();
    bool init(char const*);
    TodoReturn registerForCallback(cocos2d::SEL_CallFuncO, cocos2d::CCNode*);
 
    virtual TodoReturn show();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class AchievementBar {
    // AchievementBar();
    virtual ~AchievementBar();
 
    AchievementBar* create(char const*, char const*, char const*);
 
    TodoReturn getTargetScene();
    bool init(char const*, char const*, char const*);
    TodoReturn show();
 
    virtual void setTargetScene(cocos2d::CCNode*);

}

[[link(android)]]
class CCContentLayer {
    // CCContentLayer();
    virtual ~CCContentLayer();
 
    CCContentLayer* create(cocos2d::ccColor4B const&, float, float);
 
    virtual void setPosition(cocos2d::CCPoint const&);

}

[[link(android)]]
class CCCounterLabel {
    // CCCounterLabel();
    virtual ~CCCounterLabel();
 
    CCCounterLabel* create(char const*, char const*, int, FormatterType);
 
    TodoReturn calculateStepSize();
    TodoReturn disableCounter();
    TodoReturn enableCounter();
    TodoReturn fastUpdateCounter();
    TodoReturn getCurrentCount();
    TodoReturn getTargetCount();
    bool init(char const*, char const*, int, FormatterType);
    void setTargetCount(int);
    TodoReturn setupFormatter(FormatterType);
    TodoReturn updateCounter(double);
    TodoReturn updateString();

}

[[link(android)]]
class CCExtenderNode {
    void setOpacity(unsigned int);

}

[[link(android)]]
class ColoredSection {
    // ColoredSection();
    virtual ~ColoredSection();
 
    ColoredSection* create(cocos2d::ccColor3B, int, int);
 
    TodoReturn getCol();
    TodoReturn getEndPos();
    TodoReturn getStartPos();
    bool init(cocos2d::ccColor3B, int, int);
 
    virtual void setCol(cocos2d::ccColor3B);
 
    virtual void setStartPos(int);
 
    virtual void setEndPos(int);

}

[[link(android)]]
class CreateMenuItem {
    // CreateMenuItem();
    virtual ~CreateMenuItem();
 
    CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn getObjectFrame();
    bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    virtual void setObjectFrame(gd::string);

}

[[link(android)]]
class CustomListView {
    // CustomListView();
    virtual ~CustomListView();
 
    CustomListView* create(cocos2d::CCArray*, float, float, int, BoomListType);
 
    virtual TodoReturn setupList();
 
    virtual TodoReturn getListCell(char const*);
 
    virtual TodoReturn loadCell(CCTableViewCell*, int);

}

[[link(android)]]
class EditLevelLayer {
    // EditLevelLayer();
    virtual ~EditLevelLayer();
 
    EditLevelLayer* create(GJGameLevel*);
 
    TodoReturn closeTextInputs();
    TodoReturn confirmDelete();
    bool init(GJGameLevel*);
    TodoReturn onBack();
    TodoReturn onDelete();
    TodoReturn onEdit();
    TodoReturn onHelp();
    TodoReturn onPlay();
    TodoReturn onShare();
    TodoReturn onTest();
    TodoReturn scene(GJGameLevel*);
    TodoReturn setupLevelInfo();
    TodoReturn updateDescText(char const*);
 
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
 
    virtual TodoReturn textInputOpened(CCTextInputNode*);
 
    virtual TodoReturn textInputClosed(CCTextInputNode*);
 
    virtual TodoReturn textChanged(CCTextInputNode*);
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class GJSearchObject {
    // GJSearchObject();
    virtual ~GJSearchObject();
 
    GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int);
 
    TodoReturn createFromKey(char const*);
    TodoReturn getDifficultyStr();
    TodoReturn getKey();
    TodoReturn getLengthStr();
    TodoReturn getNextPageKey();
    TodoReturn getNextPageObject();
    TodoReturn getPage();
    TodoReturn getPrevPageObject();
    TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int);
    TodoReturn getString();
    TodoReturn getType();
    bool init(SearchType, gd::string, gd::string, gd::string, int);
 
    virtual void setType(SearchType);
 
    virtual void setString(gd::string);
 
    virtual void setDifficultyStr(gd::string);
 
    virtual void setLengthStr(gd::string);
 
    virtual void setPage(int);

}

[[link(android)]]
class LevelInfoLayer {
    // LevelInfoLayer();
    virtual ~LevelInfoLayer();
 
    LevelInfoLayer* create(GJGameLevel*);
 
    TodoReturn confirmDelete();
    TodoReturn incrementLikes();
    bool init(GJGameLevel*);
    TodoReturn onBack();
    TodoReturn onClone();
    TodoReturn onDelete();
    TodoReturn onInfo();
    TodoReturn onLike();
    TodoReturn onPlay();
    TodoReturn onRate();
    TodoReturn onUpdate();
    TodoReturn scene(GJGameLevel*);
    TodoReturn setupLevelInfo();
    TodoReturn setupProgressBars();
    TodoReturn showUpdateAlert(UpdateResponse);
    TodoReturn updateLabelValues();
    TodoReturn updateSideButtons();
 
    virtual TodoReturn levelDownloadFinished(GJGameLevel*);
 
    virtual TodoReturn levelDownloadFailed(int);
 
    virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
 
    virtual TodoReturn levelUpdateFailed(int);
 
    virtual TodoReturn rateLevelClosed();
 
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class MoreGamesLayer {
    // MoreGamesLayer();
    virtual ~MoreGamesLayer();
 
    MoreGamesLayer* create();
 
    TodoReturn updateListBGColor(cocos2d::ccColor3B);
 
    virtual TodoReturn customSetup();

}

[[link(android)]]
class RateLevelLayer {
    // RateLevelLayer();
    virtual ~RateLevelLayer();
 
    RateLevelLayer* create(int);
 
    TodoReturn getDelegate();
    bool init(int);
    TodoReturn onClose();
    TodoReturn onRate();
    TodoReturn selectRating(cocos2d::CCNode*);
 
    virtual TodoReturn keyBackClicked();
 
    virtual void setDelegate(RateLevelDelegate*);

}

[[link(android)]]
class AchievementCell {
    AchievementCell(char const*, float, float);
    virtual ~AchievementCell();
 
    bool init();
    TodoReturn loadFromDict(cocos2d::CCDictionary*);
    TodoReturn updateBGColor(int);
 
    virtual TodoReturn draw();

}

[[link(android)]]
class BitmapFontCache {
    // BitmapFontCache();
    virtual ~BitmapFontCache();
 
    TodoReturn sharedFontCache();
 
    TodoReturn fontWithConfigFile(char const*, float);
    bool init();
    TodoReturn purgeSharedFontCache();

}

[[link(android)]]
class BoomScrollLayer {
    // BoomScrollLayer();
    virtual ~BoomScrollLayer();
 
    BoomScrollLayer* create(cocos2d::CCArray*, int, bool);
 
    TodoReturn addPage(cocos2d::CCLayer*);
    TodoReturn addPage(cocos2d::CCLayer*, int);
    TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn claimTouch(cocos2d::CCTouch*);
    TodoReturn getCurrentScreen();
    TodoReturn getDelegate();
    TodoReturn getInternalLayer();
    TodoReturn getMarginOffset();
    TodoReturn getMinTouchSpeed();
    TodoReturn getMinimumTouchLengthToChangePage();
    TodoReturn getMinimumTouchLengthToSlide();
    TodoReturn getMovingToPage();
    TodoReturn getPage(int);
    TodoReturn getPagesIndicatorNormalColor();
    TodoReturn getPagesIndicatorSelectedColor();
    TodoReturn getPagesWidthOffset();
    TodoReturn getRelativePageForNum(int);
    TodoReturn getRelativePosForPage(int);
    TodoReturn getScrollArea();
    TodoReturn getShowPagesIndicator();
    TodoReturn getStealTouches();
    TodoReturn getTotalPages();
    TodoReturn getTouchSpeedFast();
    TodoReturn getTouchSpeedMid();
    TodoReturn getpages();
    bool init(cocos2d::CCArray*, int, bool);
    TodoReturn instantMoveToPage(int);
    TodoReturn moveToPage(int);
    TodoReturn moveToPageEnded();
    TodoReturn pageNumberForPosition(cocos2d::CCPoint);
    TodoReturn positionForPageWithNumber(int);
    TodoReturn quickUpdate();
    TodoReturn removePage(cocos2d::CCLayer*);
    TodoReturn removePageWithNumber(int);
    TodoReturn repositionPagesLooped();
    TodoReturn selectPage(int);
    void setPageSetup(cocos2d::CCArray*);
    void setPagesIndicatorPosition(cocos2d::CCPoint);
    TodoReturn updateDots();
    TodoReturn updatePages();
 
    virtual TodoReturn visit();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual void setScrollArea(cocos2d::CCRect);
 
    virtual void setMinTouchSpeed(float);
 
    virtual void setTouchSpeedFast(float);
 
    virtual void setTouchSpeedMid(float);
 
    virtual void setDelegate(BoomScrollLayerDelegate*);
 
    virtual void setMinimumTouchLengthToSlide(float);
 
    virtual void setMinimumTouchLengthToChangePage(float);
 
    virtual void setMarginOffset(float);
 
    virtual void setStealTouches(bool);
 
    virtual void setShowPagesIndicator(bool);
 
    virtual void setPagesIndicatorSelectedColor(cocos2d::ccColor4B);
 
    virtual void setPagesIndicatorNormalColor(cocos2d::ccColor4B);
 
    virtual void setPagesWidthOffset(float);

}

[[link(android)]]
class CCTableViewCell {
    CCTableViewCell(char const*, float, float);
    virtual ~CCTableViewCell();
 
    TodoReturn deleteButtonSelector(cocos2d::CCObject*);
    TodoReturn getCellIdentifier();
    TodoReturn getDelBtnColor();
    TodoReturn getDeleteButton();
    TodoReturn getEditable();
    bool isDeleteButtonShow();
    TodoReturn resetDeleteButtonPosition();
    TodoReturn showDeleteButton(bool);
    TodoReturn updateVisibility();
 
    virtual void setEditable(bool);
 
    virtual void setDelBtnColor(cocos2d::ccColor3B);
 
    virtual void setDeleteButton(cocos2d::CCMenuItem*);
 
    virtual void setCellIdentifier(gd::string const&);

}

[[link(android)]]
class CCTextInputNode {
    // CCTextInputNode();
    virtual ~CCTextInputNode();
 
    CCTextInputNode* create(float, float, char const*, char const*, int, char const*);
 
    TodoReturn getCharLimit();
    TodoReturn getDelegate();
    TodoReturn getLabel();
    TodoReturn getProfanityFilter();
    TodoReturn getString();
    TodoReturn getTextField();
    bool init(float, float, char const*, char const*, int, char const*);
    TodoReturn refreshLabel();
    void setAllowedChars(gd::string);
    void setLabelNormalColor(cocos2d::ccColor3B);
    void setLabelPlaceholderColor(cocos2d::ccColor3B);
    void setLabelPlaceholderScale(float);
    void setMaxLabelScale(float);
    void setMaxLabelWidth(float);
    void setString(char const*);
    TodoReturn updateLabel(char const*);
 
    virtual TodoReturn visit();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual TodoReturn textChanged();
 
    virtual TodoReturn onClickTrackNode(bool);
 
    virtual TodoReturn keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
 
    virtual TodoReturn keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
 
    virtual TodoReturn onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int);
 
    virtual TodoReturn onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
 
    virtual TodoReturn onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
 
    virtual void setDelegate(TextInputDelegate*);
 
    virtual void setCharLimit(int);
 
    virtual void setProfanityFilter(bool);

}

[[link(android)]]
class EndPortalObject {
    // EndPortalObject();
    virtual ~EndPortalObject();
 
    EndPortalObject* create();
 
    TodoReturn updateColors(cocos2d::ccColor3B);
 
    virtual void setPosition(cocos2d::CCPoint const&);
 
    virtual void setVisible(bool);
 
    virtual bool init();
 
    virtual TodoReturn triggerObject();
 
    virtual TodoReturn calculateSpawnXPos();

}

[[link(android)]]
class FileSaveManager {
    // FileSaveManager();
    virtual ~FileSaveManager();
 
    TodoReturn sharedState();
 
    TodoReturn getShopItems();
    TodoReturn getStoreData();
    bool init();
    TodoReturn loadDataFromFile(char const*);
 
    virtual TodoReturn firstLoad();

}

[[link(android)]]
class GJDropDownLayer {
    // GJDropDownLayer();
    virtual ~GJDropDownLayer();
 
    GJDropDownLayer* create(char const*);
    GJDropDownLayer* create(char const*, float);
 
    TodoReturn getInternalLayer();
    TodoReturn getRemoveOnExit();
    bool init(char const*);
    bool init(char const*, float);
 
    virtual TodoReturn draw();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn enterLayer();
 
    virtual TodoReturn exitLayer();
 
    virtual TodoReturn showLayer(bool);
 
    virtual TodoReturn hideLayer(bool);
 
    virtual TodoReturn layerVisible();
 
    virtual TodoReturn layerHidden();
 
    virtual TodoReturn enterAnimFinished();
 
    virtual TodoReturn disableUI();
 
    virtual TodoReturn enableUI();
 
    virtual TodoReturn keyBackClicked();
 
    virtual void setRemoveOnExit(bool);

}

[[link(android)]]
class PlatformToolbox {
    TodoReturn activateGameCenter();
    TodoReturn doesFileExist(gd::string);
    TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
    TodoReturn getUniqueUserID();
    TodoReturn getUserID();
    bool isHD();
    bool isLocalPlayerAuthenticated();
    bool isNetworkAvailable();
    TodoReturn loadAndDecryptFileToString(char const*, char const*);
    TodoReturn logEvent(char const*);
    TodoReturn onGameLaunch();
    TodoReturn onNativePause();
    TodoReturn onNativeResume();
    TodoReturn onToggleKeyboard();
    TodoReturn openAppPage();
    TodoReturn reportAchievementWithID(char const*, int);
    TodoReturn reportLoadingFinished();
    TodoReturn saveAndEncryptStringToFile(gd::string, char const*, char const*);
    TodoReturn sendMail(char const*, char const*, char const*);
    void setBlockBackButton(bool);
    void setKeyboardState(bool);
    TodoReturn shouldResumeSound();
    TodoReturn showAchievements();
    TodoReturn spriteFromSavedFile(gd::string);
    TodoReturn startFlurry(char const*);
    TodoReturn tryShowRateDialog(gd::string);

}

[[link(android)]]
class ShareLevelLayer {
    // ShareLevelLayer();
    virtual ~ShareLevelLayer();
 
    ShareLevelLayer* create(GJGameLevel*);
 
    bool init(GJGameLevel*);
    TodoReturn onClose();
    TodoReturn onShare();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class CCAnimatedSprite {
    // CCAnimatedSprite();
    virtual ~CCAnimatedSprite();
 
    TodoReturn cleanupSprite();
    TodoReturn createWithType(char const*);
    TodoReturn getActiveSpriteMode();
    TodoReturn getAnimManager();
    TodoReturn getAnimatedSprite();
    TodoReturn getDefaultAnimation();
    TodoReturn getDelegate();
    TodoReturn getNormalSprite();
    TodoReturn getSprite();
    TodoReturn initWithType(char const*);
    TodoReturn loadType(char const*);
    TodoReturn switchToMode(spriteMode);
 
    virtual void setOpacity(unsigned char);
 
    virtual TodoReturn animationFinished(char const*);
 
    virtual TodoReturn animationFinishedO(cocos2d::CCObject*);
 
    virtual void setSprite(cocos2d::CCSprite*);
 
    virtual void setNormalSprite(cocos2d::CCSprite*);
 
    virtual void setAnimatedSprite(CCPartAnimSprite*);
 
    virtual void setDefaultAnimation(gd::string);
 
    virtual void setDelegate(AnimatedSpriteDelegate*);

}

[[link(android)]]
class CCContentManager {
    // CCContentManager();
    virtual ~CCContentManager();
 
    TodoReturn addCCDict(char const*);
    TodoReturn addDict(char const*);
    TodoReturn addPath(char const*);
    TodoReturn clearCache();
    bool init();
    TodoReturn sharedManager();

}

[[link(android)]]
class CCPartAnimSprite {
    // CCPartAnimSprite();
    virtual ~CCPartAnimSprite();
 
    TodoReturn changeTextureOfID(cocos2d::CCString*, cocos2d::CCString*);
    TodoReturn countParts();
    TodoReturn createWithAnimDesc(cocos2d::CCString*, cocos2d::CCTexture2D*);
    TodoReturn dirtify();
    TodoReturn getSpriteContainer();
    TodoReturn getSpriteForKey(cocos2d::CCString*);
    TodoReturn initWithAnimDesc(cocos2d::CCString*, cocos2d::CCTexture2D*);
    void setColor(cocos2d::ccColor3B);
    void setFlipX(bool);
    void setFlipY(bool);
    TodoReturn transformSprite(frameValues);
 
    virtual void setScaleX(float);
 
    virtual void setScaleY(float);
 
    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
 
    virtual void setScale(float);
 
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
 
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
 
    virtual TodoReturn displayFrame();

}

[[link(android)]]
class CCScrollLayerExt {
    CCScrollLayerExt(cocos2d::CCRect);
    virtual ~CCScrollLayerExt();
 
    TodoReturn constraintContent();
    TodoReturn getBottomPadding();
    TodoReturn getClipsToBounds();
    TodoReturn getContentLayer();
    TodoReturn getHorizontalScrollIndicator();
    TodoReturn getIsScrolling();
    TodoReturn getIsTouch();
    TodoReturn getLockHorizontal();
    TodoReturn getLockVertical();
    TodoReturn getMaxOffsetBottom();
    TodoReturn getMaxOffsetTop();
    TodoReturn getMaxY();
    TodoReturn getMinY();
    TodoReturn getScrollDelegate();
    TodoReturn getShowsHorizontalScrollIndicator();
    TodoReturn getShowsVerticalScrollIndicator();
    TodoReturn getTopPadding();
    TodoReturn getTouchDispatch();
    TodoReturn getVerticalScrollIndicator();
    TodoReturn moveToTop();
    TodoReturn moveToTopWithOffset(float);
    TodoReturn scrollingEnd();
    void setContentLayerSize(cocos2d::CCSize);
    void setContentOffset(cocos2d::CCPoint, bool);
    TodoReturn updateIndicators(float);
 
    virtual TodoReturn visit();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual void setIsTouch(bool);
 
    virtual void setIsScrolling(bool);
 
    virtual void setVerticalScrollIndicator(cocos2d::CCLayerColor*);
 
    virtual void setHorizontalScrollIndicator(cocos2d::CCLayerColor*);
 
    virtual void setScrollDelegate(CCScrollLayerExtDelegate*);
 
    virtual void setContentLayer(cocos2d::CCLayerColor*);
 
    virtual void setClipsToBounds(bool);
 
    virtual void setShowsHorizontalScrollIndicator(bool);
 
    virtual void setShowsVerticalScrollIndicator(bool);
 
    virtual void setLockHorizontal(bool);
 
    virtual void setLockVertical(bool);
 
    virtual void setTouchDispatch(bool);
 
    virtual void setTopPadding(float);
 
    virtual void setBottomPadding(float);
 
    virtual void setMaxOffsetTop(float);
 
    virtual void setMaxOffsetBottom(float);
 
    virtual TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
 
    virtual TodoReturn postVisit();

}

[[link(android)]]
class CheckpointObject {
    // CheckpointObject();
    virtual ~CheckpointObject();
 
    CheckpointObject* create();
 
    TodoReturn getActiveEnterEffect();
    TodoReturn getBGColor();
    TodoReturn getCameraPos();
    TodoReturn getCanJump();
    TodoReturn getFlipGravity();
    TodoReturn getFlyMode();
    TodoReturn getGhostType();
    TodoReturn getGroundColor();
    TodoReturn getObject();
    TodoReturn getPlayerPos();
    TodoReturn getPlayerYVel();
    TodoReturn getPortalObject();
    bool init();
    void setObject(GameObject*);
 
    virtual void setPlayerPos(cocos2d::CCPoint);
 
    virtual void setPlayerYVel(float);
 
    virtual void setFlipGravity(bool);
 
    virtual void setFlyMode(bool);
 
    virtual void setCanJump(bool);
 
    virtual void setGhostType(int);
 
    virtual void setCameraPos(cocos2d::CCPoint);
 
    virtual void setBGColor(cocos2d::ccColor3B);
 
    virtual void setGroundColor(cocos2d::ccColor3B);
 
    virtual void setActiveEnterEffect(EnterEffect);
 
    virtual void setPortalObject(GameObject*);

}

[[link(android)]]
class ColorPickerPopup {
    // ColorPickerPopup();
    virtual ~ColorPickerPopup();
 
    ColorPickerPopup* create();
 
    TodoReturn closeColorSelect();
    TodoReturn getColorValue();
    TodoReturn getDelegate();
    TodoReturn selectColor(cocos2d::ccColor3B);
 
    virtual bool init();
 
    virtual TodoReturn show();
 
    virtual TodoReturn keyBackClicked();
 
    virtual void setDelegate(ColorPickerDelegate*);

}

[[link(android)]]
class ColorSelectPopup {
    // ColorSelectPopup();
    virtual ~ColorSelectPopup();
 
    ColorSelectPopup* create(GameObject*);
 
    TodoReturn closeColorSelect();
    TodoReturn getColorValue();
    TodoReturn getDelegate();
    TodoReturn getDuration();
    bool init(GameObject*);
    TodoReturn selectColor(cocos2d::ccColor3B);
    TodoReturn sliderChanged(SliderThumb*);
    TodoReturn updateDurLabel();
 
    virtual TodoReturn show();
 
    virtual TodoReturn keyBackClicked();
 
    virtual void setDelegate(ColorSelectDelegate*);

}

[[link(android)]]
class EditorPauseLayer {
    // EditorPauseLayer();
    virtual ~EditorPauseLayer();
 
    EditorPauseLayer* create(LevelEditorLayer*);
 
    bool init(LevelEditorLayer*);
    TodoReturn onBPM();
    TodoReturn onExitEditor();
    TodoReturn onExitNoSave();
    TodoReturn onHelp();
    TodoReturn onResume();
    TodoReturn onSaveAndExit();
    TodoReturn onSaveAndPlay();
    TodoReturn onSaveAndTest();
    TodoReturn onSong();
    TodoReturn saveLevel();
    TodoReturn updateBPMButton();
    TodoReturn updateSongButton();
 
    virtual TodoReturn customSetup();
 
    virtual TodoReturn keyBackClicked();
 
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

}

[[link(android)]]
class GameLevelManager {
    // GameLevelManager();
    virtual ~GameLevelManager();
 
    TodoReturn sharedState();
 
    TodoReturn addDLToActive(char const*);
    TodoReturn createAndGetLevels(gd::string);
    TodoReturn createNewLevel();
    TodoReturn dataLoaded(DS_Dictionary*);
    TodoReturn deleteLevel(GJGameLevel*);
    TodoReturn downloadLevel(int);
    TodoReturn encodeDataTo(DS_Dictionary*);
    TodoReturn firstSetup();
    TodoReturn getDelegate();
    TodoReturn getDiffKey(int);
    TodoReturn getDiffVal(int);
    TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool);
    TodoReturn getDlDelegate();
    TodoReturn getLastSearchKey();
    TodoReturn getLenKey(int);
    TodoReturn getLenVal(int);
    TodoReturn getLengthStr(bool, bool, bool, bool);
    TodoReturn getLevelKey(int);
    TodoReturn getLikeKey(int);
    TodoReturn getLocalLevel(int);
    TodoReturn getLocalLevels();
    TodoReturn getMainLevel(int);
    TodoReturn getOnlineLevels(GJSearchObject*);
    TodoReturn getPageInfo(char const*);
    TodoReturn getRateKey(int);
    TodoReturn getSavedLevel(int);
    TodoReturn getSavedLevels();
    TodoReturn getSearchScene(char const*);
    TodoReturn getStoredOnlineLevels(char const*);
    TodoReturn getUpDelegate();
    TodoReturn getUpdateDelegate();
    TodoReturn gotoLevelPage(GJGameLevel*);
    TodoReturn hasDownloadedLevel(int);
    TodoReturn hasLikedLevel(int);
    TodoReturn hasRatedLevel(int);
    bool init();
    bool isDLActive(char const*);
    bool isTimeValid(char const*, float);
    bool isUpdateValid(int);
    TodoReturn likeLevel(int);
    TodoReturn makeTimeStamp(char const*);
    TodoReturn markLevelAsDownloaded(int);
    TodoReturn markLevelAsLiked(int);
    TodoReturn markLevelAsRated(int);
    TodoReturn onDownloadLevelCompleted(cocos2d::CCNode*, void*);
    TodoReturn onGetOnlineLevelsCompleted(cocos2d::CCNode*, void*);
    TodoReturn onLikeLevelCompleted(cocos2d::CCNode*, void*);
    TodoReturn onRateLevelCompleted(cocos2d::CCNode*, void*);
    TodoReturn onUpdateLevelCompleted(cocos2d::CCNode*, void*);
    TodoReturn onUpdateUserNameCompleted(cocos2d::CCNode*, void*);
    TodoReturn onUploadLevelCompleted(cocos2d::CCNode*, void*);
    TodoReturn rateLevel(int, int);
    TodoReturn removeDLFromActive(char const*);
    TodoReturn removeDelimiterChars(gd::string);
    TodoReturn resetAllTimers();
    TodoReturn responseToDict(gd::string);
    TodoReturn saveLevel(GJGameLevel*);
    void setDiffVal(int, bool);
    void setLenVal(int, bool);
    TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
    TodoReturn storeUserNames(gd::string);
    TodoReturn updateLevel(GJGameLevel*);
    TodoReturn updateUserName();
    TodoReturn uploadLevel(GJGameLevel*);
    TodoReturn userNameForID(char const*);
 
    virtual void setLastSearchKey(gd::string);
 
    virtual void setDelegate(LevelManagerDelegate*);
 
    virtual void setDlDelegate(LevelDownloadDelegate*);
 
    virtual void setUpDelegate(LevelUploadDelegate*);
 
    virtual void setUpdateDelegate(LevelUpdateDelegate*);

}

[[link(android)]]
class GameRateDelegate {
    // GameRateDelegate();
 
    TodoReturn updateRate();

}

[[link(android)]]
class GameSoundManager {
    // GameSoundManager();
    virtual ~GameSoundManager();
 
    TodoReturn asynchronousSetup();
    TodoReturn fadeInMusic(bool);
    TodoReturn fadeOutMusic(bool);
    TodoReturn getBGVol();
    TodoReturn getState();
    bool init();
    bool isLoopedSoundPlaying(char const*);
    TodoReturn pauseAllLoopedSounds();
    TodoReturn pauseLoopedSound(char const*);
    TodoReturn playEffect(char const*);
    TodoReturn playEffect(char const*, float, float, float);
    TodoReturn playLoopedSound(char const*, char const*, float, float, bool, bool, bool);
    TodoReturn playUniqueEffect(char const*);
    TodoReturn playUniqueEffect(char const*, float, float, float);
    TodoReturn preload();
    TodoReturn removeLoopedSound(char const*);
    TodoReturn resetUniqueEffects();
    TodoReturn resumeAllLoopedSounds();
    TodoReturn resumeSound();
    void setBGMusicVolume(float);
    TodoReturn setup();
    TodoReturn sharedManager();
    TodoReturn stopAllLoopedSounds();
    TodoReturn stopLoopedSound(char const*, bool);
    TodoReturn updateLoopedVolume(char const*, float);
 
    virtual void setBGVol(float);

}

[[link(android)]]
class GameStatsManager {
    // GameStatsManager();
    virtual ~GameStatsManager();
 
    TodoReturn sharedState();
 
    TodoReturn checkAchievement(char const*);
    TodoReturn completedLevel(int, bool);
    TodoReturn dataLoaded(DS_Dictionary*);
    TodoReturn encodeDataTo(DS_Dictionary*);
    TodoReturn firstSetup();
    TodoReturn getLevelKey(int, bool);
    TodoReturn getStat(char const*);
    TodoReturn hasCompletedLevel(int, bool);
    TodoReturn incrementStat(char const*);
    bool init();

}

[[link(android)]]
class GameStoreManager {
    // GameStoreManager();
    virtual ~GameStoreManager();
 
    TodoReturn sharedState();
 
    TodoReturn addCount(int, char const*);
    TodoReturn boughtGold(int);
    TodoReturn claimItems(char const*);
    TodoReturn consumeItem(char const*);
    TodoReturn countForItem(char const*);
    TodoReturn dictForFeatureID(char const*);
    TodoReturn displayGoldError();
    TodoReturn displayItemRestore(bool, bool);
    TodoReturn eventUnlockFeature(char const*);
    TodoReturn getAllItemsForCategory(char const*);
    TodoReturn getCategory(char const*);
    TodoReturn getShopCategories();
    TodoReturn getShopItems();
    bool init();
    bool isBillingSupported();
    bool isFeatureUnlocked(char const*);
    TodoReturn itemPurchaseFailed(char const*);
    TodoReturn itemPurchased(char const*);
    TodoReturn itemRefunded(char const*);
    TodoReturn onClaimItemsCompleted(cocos2d::CCNode*, void*);
    TodoReturn playBuySound();
    TodoReturn purchaseConsumable(char const*, int, int);
    TodoReturn purchaseFeature(char const*, int);
    TodoReturn purchaseItem(char const*);
    TodoReturn restorePurchases();
    void setCount(int, char const*);
    TodoReturn sortCategories();
    TodoReturn unlockFeature(char const*);
 
    virtual TodoReturn setup();
 
    virtual TodoReturn encodeDataTo(DS_Dictionary*);
 
    virtual TodoReturn dataLoaded(DS_Dictionary*);
 
    virtual TodoReturn firstLoad();

}

[[link(android)]]
class GhostTrailEffect {
    // GhostTrailEffect();
    virtual ~GhostTrailEffect();
 
    GhostTrailEffect* create();
 
    TodoReturn doBlendAdditive();
    TodoReturn getBlendFunc();
    TodoReturn getDelegate();
    TodoReturn getGhostColor();
    TodoReturn getPTarget();
    TodoReturn getPosTarget();
    TodoReturn getStartAlpha();
    TodoReturn getTarget();
    bool init();
    TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
    TodoReturn stopTrail();
    TodoReturn trailSnapshot();
 
    virtual TodoReturn draw();
 
    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
 
    virtual void setTarget(cocos2d::CCSprite*);
 
    virtual void setPosTarget(cocos2d::CCSprite*);
 
    virtual void setPTarget(cocos2d::CCNode*);
 
    virtual void setStartAlpha(float);
 
    virtual void setDelegate(GhostTrailDelegate*);
 
    virtual void setGhostColor(cocos2d::ccColor3B);

}

[[link(android)]]
class GJMoreGamesLayer {
    // GJMoreGamesLayer();
    virtual ~GJMoreGamesLayer();
 
    GJMoreGamesLayer* create();
 
    virtual TodoReturn customSetup();

}

[[link(android)]]
class LevelEditorLayer {
    // LevelEditorLayer();
    virtual ~LevelEditorLayer();
 
    LevelEditorLayer* create(GJGameLevel*);
 
    TodoReturn addToRedoList(UndoObject*);
    TodoReturn addToSection(GameObject*);
    TodoReturn addToUndoList(UndoObject*);
    TodoReturn createObject(char const*, cocos2d::CCPoint);
    TodoReturn createObjectsFromSetup(gd::string);
    TodoReturn getGameLayer();
    TodoReturn getLevel();
    TodoReturn getLevelDistance();
    TodoReturn getLevelSettings();
    TodoReturn getLevelString();
    TodoReturn getObjectCount();
    TodoReturn getSectionCount();
    bool init(GJGameLevel*);
    TodoReturn objectAtPosition(cocos2d::CCPoint);
    TodoReturn objectsInRect(cocos2d::CCRect);
    TodoReturn redoLastAction();
    TodoReturn removeAllObjects();
    TodoReturn removeObject(GameObject*);
    TodoReturn removeObjectFromSection(GameObject*);
    TodoReturn reorderObjectSection(GameObject*);
    TodoReturn scene(GJGameLevel*);
    TodoReturn sectionForPos(cocos2d::CCPoint);
    TodoReturn typeExistsAtPosition(gd::string, cocos2d::CCPoint, bool, bool, float);
    TodoReturn undoLastAction();
 
    virtual TodoReturn levelSettingsUpdated();
 
    virtual void setObjectCount(int);

}

[[link(android)]]
class LevelSearchLayer {
    // LevelSearchLayer();
    virtual ~LevelSearchLayer();
 
    LevelSearchLayer* create();
 
    TodoReturn checkDiff(int);
    TodoReturn checkTime(int);
    TodoReturn getDiffKey(int);
    TodoReturn getLevelLenKey();
    TodoReturn getSearchDiffKey();
    TodoReturn getTimeKey(int);
    bool init();
    TodoReturn onBack();
    TodoReturn onClose();
    TodoReturn onMostDownloaded();
    TodoReturn onMostLikes();
    TodoReturn onMostRecent();
    TodoReturn onSearch();
    TodoReturn onTrending();
    TodoReturn scene();
    TodoReturn toggleDifficulty(cocos2d::CCNode*);
    TodoReturn toggleDifficultyNum(int, bool);
    TodoReturn toggleTime(cocos2d::CCNode*);
    TodoReturn toggleTimeNum(int, bool);
    TodoReturn updateSearchLabel(char const*);
 
    virtual TodoReturn textInputOpened(CCTextInputNode*);
 
    virtual TodoReturn textInputClosed(CCTextInputNode*);
 
    virtual TodoReturn textChanged(CCTextInputNode*);
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class LevelSelectLayer {
    // LevelSelectLayer();
    virtual ~LevelSelectLayer();
 
    LevelSelectLayer* create(int);
 
    TodoReturn colorForPage(int);
    TodoReturn getColorValue(int, int, float);
    bool init(int);
    TodoReturn onBack();
    TodoReturn onDownload();
    TodoReturn onNext();
    TodoReturn onPrev();
    TodoReturn scene(int);
 
    virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class MoreGamesManager {
    // MoreGamesManager();
    virtual ~MoreGamesManager();
 
    TodoReturn sharedState();
 
    TodoReturn checkMoreGames();
    TodoReturn dataLoaded(DS_Dictionary*);
    TodoReturn encodeDataTo(DS_Dictionary*);
    TodoReturn firstLoad();
    TodoReturn getHasNewGames();
    TodoReturn getMoreGamesList();
    TodoReturn getMoreGamesString();
    TodoReturn handleMoreGamesResponse(gd::string);
    bool init();
    TodoReturn onCheckMoreGamesCompleted(cocos2d::CCNode*, void*);
    TodoReturn promoImageDownloaded(gd::string);
    TodoReturn shouldCheckMoreGames();
 
    virtual void setMoreGamesString(gd::string);
 
    virtual void setHasNewGames(bool);

}

[[link(android)]]
class SavedLevelsLayer {
    // SavedLevelsLayer();
    virtual ~SavedLevelsLayer();
 
    SavedLevelsLayer* create();
 
    bool init();
    TodoReturn onBack();
    TodoReturn scene();
    TodoReturn setupLevelBrowser();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class SliderTouchLogic {
    // SliderTouchLogic();
    virtual ~SliderTouchLogic();
 
    SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_CallFuncO, char const*, char const*);
 
    TodoReturn getLiveDragging();
    TodoReturn getSliderDelegate();
    TodoReturn getThumb();
    bool init(cocos2d::CCNode*, cocos2d::SEL_CallFuncO, char const*, char const*);
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual void setSliderDelegate(Slider*);
 
    virtual void setLiveDragging(bool);

}

[[link(android)]]
class AchievementsLayer {
    // AchievementsLayer();
    virtual ~AchievementsLayer();
 
    AchievementsLayer* create();
 
    virtual TodoReturn customSetup();

}

[[link(android)]]
class AudioEffectsLayer {
    // AudioEffectsLayer();
    virtual ~AudioEffectsLayer();
 
    AudioEffectsLayer* create(gd::string);
 
    TodoReturn audioStep(float);
    TodoReturn getAudioScale();
    TodoReturn getBGSquare();
    TodoReturn getRainActive();
    TodoReturn goingDown();
    bool init(gd::string);
    TodoReturn resetAudioVars();
    TodoReturn triggerEffect(float);
 
    virtual TodoReturn draw();
 
    virtual TodoReturn updateTweenAction(float, char const*);
 
    virtual void setRainActive(bool);

}

[[link(android)]]
class CCMenuItemToggler {
    // CCMenuItemToggler();
    virtual ~CCMenuItemToggler();
 
    CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn activeItem();
    TodoReturn getIsActive();
    TodoReturn getNormalButton();
    TodoReturn getSelectedButton();
    bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn normalTouch();
    TodoReturn selectedTouch();
    TodoReturn toggle(bool);
 
    virtual TodoReturn activate();
 
    virtual TodoReturn selected();
 
    virtual TodoReturn unselected();
 
    virtual void setEnabled(bool);

}

[[link(android)]]
class LevelBrowserLayer {
    // LevelBrowserLayer();
    virtual ~LevelBrowserLayer();
 
    LevelBrowserLayer* create(GJSearchObject*);
 
    bool init(GJSearchObject*);
    bool isCorrect(char const*);
    TodoReturn loadPage(GJSearchObject*);
    TodoReturn onBack();
    TodoReturn onNextPage();
    TodoReturn onPrevPage();
    TodoReturn scene(GJSearchObject*);
    void setSearchObject(GJSearchObject*);
    TodoReturn setupLevelBrowser(cocos2d::CCArray*);
    TodoReturn updateLevelsLabel();
 
    virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
 
    virtual TodoReturn loadLevelsFailed(char const*);
 
    virtual TodoReturn setupPageInfo(gd::string, char const*);
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class RateLevelDelegate {
    // RateLevelDelegate();
 
    TodoReturn rateLevelClosed();

}

[[link(android)]]
class SpriteDescription {
    // SpriteDescription();
    virtual ~SpriteDescription();
 
    TodoReturn createDescription(DS_Dictionary*);
    TodoReturn createDescription(cocos2d::CCDictionary*);
    TodoReturn getTransformValues(frameValues*);
    TodoReturn initDescription(DS_Dictionary*);
    TodoReturn initDescription(cocos2d::CCDictionary*);

}

[[link(android)]]
class TextInputDelegate {
    // TextInputDelegate();
 
    TodoReturn textChanged(CCTextInputNode*);
 
    virtual TodoReturn textInputOpened(CCTextInputNode*);
 
    virtual TodoReturn textInputClosed(CCTextInputNode*);

}

[[link(android)]]
class AchievementManager {
    // AchievementManager();
    virtual ~AchievementManager();
 
    TodoReturn sharedState();
 
    TodoReturn areAchievementsEarned(cocos2d::CCArray*);
    TodoReturn checkAchFromUnlock(char const*);
    TodoReturn getAchievementsWithID(char const*);
    TodoReturn getAllAchievements();
    TodoReturn getReportedAchievements();
    bool init();
    bool isAchievementEarned(char const*);
    TodoReturn notifyAchievementWithID(char const*);
    TodoReturn percentForAchievement(char const*);
    TodoReturn percentageForCount(int, int);
    TodoReturn reportAchievementWithID(char const*, int);
    TodoReturn resetAchievements();
    TodoReturn setup();
 
    virtual void setReportedAchievements(cocos2d::CCDictionary*);

}

[[link(android)]]
class GameEffectsManager {
    // GameEffectsManager();
    virtual ~GameEffectsManager();
 
    GameEffectsManager* create(PlayLayer*);
 
    TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
    bool init(PlayLayer*);
    TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);

}

[[link(android)]]
class LevelSettingsLayer {
    // LevelSettingsLayer();
    virtual ~LevelSettingsLayer();
 
    LevelSettingsLayer* create(LevelSettingsObject*);
 
    TodoReturn audioNext();
    TodoReturn audioPrevious();
    TodoReturn getDelegate();
    bool init(LevelSettingsObject*);
    TodoReturn onBG();
    TodoReturn onClose();
    TodoReturn onG();
    TodoReturn selectSong(int);
    TodoReturn updateAudioLabel();
 
    virtual TodoReturn keyBackClicked();
 
    virtual TodoReturn colorPickerClosed(ColorPickerPopup*);
 
    virtual void setDelegate(LevelSettingsDelegate*);

}

[[link(android)]]
class AchievementNotifier {
    // AchievementNotifier();
    virtual ~AchievementNotifier();
 
    TodoReturn sharedState();
 
    TodoReturn achievementDisplayFinished();
    bool init();
    TodoReturn notifyAchievement(char const*, char const*, char const*);
    TodoReturn showNextAchievement();
    TodoReturn willSwitchToScene(cocos2d::CCScene*);

}

[[link(android)]]
class CCAnimateFrameCache {
    // CCAnimateFrameCache();
    virtual ~CCAnimateFrameCache();
 
    TodoReturn sharedSpriteFrameCache();
 
    TodoReturn addCustomSpriteFramesWithFile(char const*);
    TodoReturn addDict(DS_Dictionary*, char const*);
    TodoReturn addDict(cocos2d::CCDictionary*, char const*);
    TodoReturn addSpriteFramesWithFile(char const*);
    bool init();
    TodoReturn purgeSharedSpriteFrameCache();
    TodoReturn removeSpriteFrames();
    TodoReturn spriteFrameByName(char const*);

}

[[link(android)]]
class CCTableViewDelegate {
    // CCTableViewDelegate();
 
    TodoReturn willTweenToIndexPath(CCIndexPath&, CCTableViewCell*, CCTableView*);
 
    virtual TodoReturn didEndTweenToIndexPath(CCIndexPath&, CCTableView*);
 
    virtual TodoReturn ccTableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, CCTableViewCell*, CCTableView*);
 
    virtual TodoReturn ccTableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, CCTableViewCell*, CCTableView*);
 
    virtual TodoReturn ccTableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, CCTableViewCell*, CCTableView*);
 
    virtual TodoReturn pure_virtual_00539a2c() {} // TODO: figure out what function this is
 
    virtual TodoReturn pure_virtual_00539a30() {} // TODO: figure out what function this is

}

[[link(android)]]
class ColorPickerDelegate {
    // ColorPickerDelegate();
 
    TodoReturn colorPickerClosed(ColorPickerPopup*);

}

[[link(android)]]
class ColorSelectDelegate {
    // ColorSelectDelegate();
 
    TodoReturn colorSelectClosed(ColorSelectPopup*);

}

[[link(android)]]
class LevelSettingsObject {
    // LevelSettingsObject();
    virtual ~LevelSettingsObject();
 
    LevelSettingsObject* create();
 
    TodoReturn getAudioTrack();
    TodoReturn getSaveString();
    TodoReturn getStartBGColor();
    TodoReturn getStartGColor();
    bool init();
    TodoReturn objectFromString(gd::string);
 
    virtual void setStartBGColor(cocos2d::ccColor3B);
 
    virtual void setStartGColor(cocos2d::ccColor3B);
 
    virtual void setAudioTrack(int);

}

[[link(android)]]
class LevelUpdateDelegate {
    // LevelUpdateDelegate();
 
    TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
 
    virtual TodoReturn levelUpdateFailed(int);

}

[[link(android)]]
class LevelUploadDelegate {
    // LevelUploadDelegate();
 
    TodoReturn levelUploadFinished(GJGameLevel*);
 
    virtual TodoReturn levelUploadFailed(GJGameLevel*);

}

[[link(android)]]
class MultilineBitmapFont {
    // MultilineBitmapFont();
    virtual ~MultilineBitmapFont();
 
    TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int);
    TodoReturn getSizeWidth();
    TodoReturn getTextHeight();
    TodoReturn getTextPos();
    TodoReturn getTextWidth();
    TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int);
    TodoReturn readColorInfo(gd::string);
    TodoReturn stringWithMaxWidth(gd::string, float, float);
 
    virtual void setOpacity(unsigned char);

}

[[link(android)]]
class FLAlertLayerProtocol {
    // FLAlertLayerProtocol();
 
    TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

}

[[link(android)]]
class LevelManagerDelegate {
    // LevelManagerDelegate();
 
    TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
 
    virtual TodoReturn loadLevelsFailed(char const*);
 
    virtual TodoReturn setupPageInfo(gd::string, char const*);

}

[[link(android)]]
class CCMenuItemSpriteExtra {
    // CCMenuItemSpriteExtra();
    virtual ~CCMenuItemSpriteExtra();
 
    CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn getClickSound();
    TodoReturn getDarkenClick();
    TodoReturn getOriginalScale();
    TodoReturn getScaleVar();
    TodoReturn getShouldAnimate();
    TodoReturn getVolume();
    bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    void setSizeMult(float);
 
    virtual TodoReturn activate();
 
    virtual TodoReturn selected();
 
    virtual TodoReturn unselected();
 
    virtual void setScaleVar(float);
 
    virtual void setOriginalScale(float);
 
    virtual void setShouldAnimate(bool);
 
    virtual void setDarkenClick(bool);
 
    virtual void setVolume(float);
 
    virtual void setClickSound(char const*);

}

[[link(android)]]
class CCTableViewDataSource {
    // CCTableViewDataSource();
 
    TodoReturn pure_virtual_00539a00() {} // TODO: figure out what function this is
 
    virtual TodoReturn numberOfSectionsInCCTableView(CCTableView*);
 
    virtual TodoReturn ccTableViewCommitCellEditingStyleForRowAtIndexPath(CCTableView*, CCTableViewCellEditingStyle, CCIndexPath&);
 
    virtual TodoReturn pure_virtual_00539a0c() {} // TODO: figure out what function this is

}

[[link(android)]]
class LevelDownloadDelegate {
    // LevelDownloadDelegate();
 
    TodoReturn levelDownloadFinished(GJGameLevel*);
 
    virtual TodoReturn levelDownloadFailed(int);

}

[[link(android)]]
class LevelSettingsDelegate {
    // LevelSettingsDelegate();
 
    TodoReturn levelSettingsUpdated();

}

[[link(android)]]
class SpriteAnimationManager {
    // SpriteAnimationManager();
    virtual ~SpriteAnimationManager();
 
    TodoReturn animationFinished();
    TodoReturn createAnimations(gd::string);
    TodoReturn createWithOwner(CCAnimatedSprite*, gd::string);
    TodoReturn doCleanup();
    TodoReturn executeAnimation(gd::string);
    TodoReturn finishAnimation(gd::string);
    TodoReturn getActiveAnimation();
    TodoReturn getAnimType(gd::string);
    TodoReturn getAnimationContainer();
    TodoReturn getPrio(gd::string);
    TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
    TodoReturn loadAnimations(gd::string);
    TodoReturn overridePrio();
    TodoReturn playSound(gd::string);
    TodoReturn playSoundForAnimation(gd::string);
    TodoReturn queueAnimation(gd::string);
    TodoReturn resetAnimState();
    TodoReturn runAnimation(gd::string);
    TodoReturn runQueuedAnimation();
    TodoReturn storeAnimation(cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*);
    TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float);
 
    virtual void setAnimationContainer(cocos2d::CCDictionary*);
 
    virtual void setActiveAnimation(gd::string);

}

[[link(android)]]
class BoomScrollLayerDelegate {
    // BoomScrollLayerDelegate();
 
    TodoReturn scrollLayerScrollingStarted(BoomScrollLayer*);
 
    virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
 
    virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);

}

[[link(android)]]
class SimpleAudioEngineOpenSL {
    // SimpleAudioEngineOpenSL();
    ~SimpleAudioEngineOpenSL();
 
    TodoReturn sharedEngine();
 
    TodoReturn end();
    TodoReturn getEffectsVolume();
    TodoReturn initEngine();
    TodoReturn pauseAllEffects();
    TodoReturn pauseEffect(unsigned int);
    TodoReturn playEffect(char const*, bool);
    TodoReturn preloadEffect(char const*);
    TodoReturn resumeAllEffects();
    TodoReturn resumeEffect(unsigned int);
    void setEffectsVolume(float);
    TodoReturn stopAllEffects();
    TodoReturn stopEffect(unsigned int);
    TodoReturn unloadEffect(char const*);

}

[[link(android)]]
class CCScrollLayerExtDelegate {
    // CCScrollLayerExtDelegate();
 
    TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewTouchBegin(CCScrollLayerExt*);
 
    virtual TodoReturn scrollViewTouchEnd(CCScrollLayerExt*);

}

[[link(android)]]
class Slider {
    // Slider();
    virtual ~Slider();
 
    Slider* create(cocos2d::CCNode*, cocos2d::SEL_CallFuncO);
    Slider* create(cocos2d::CCNode*, cocos2d::SEL_CallFuncO, char const*, char const*, char const*, char const*);
 
    TodoReturn getLiveDragging();
    TodoReturn getThumb();
    TodoReturn getValue();
    bool init(cocos2d::CCNode*, cocos2d::SEL_CallFuncO, char const*, char const*, char const*, char const*);
    void setBarVisibility(bool);
    void setLiveDragging(bool);
    void setValue(float);
    TodoReturn updateBar();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);

}

[[link(android)]]
class Spinor {
    Spinor(float);
    Spinor(float, float);
 
    TodoReturn angle();
    TodoReturn slerp(Spinor const&, Spinor const&, float);

}

[[link(android)]]
class _JavaVM {
    TodoReturn AttachCurrentThread(_JNIEnv**, void*);
    TodoReturn GetEnv(void**, int);

}

[[link(android)]]
class cocos2d::_BMFontDef {
    ~_BMFontDef();
 
    TodoReturn _BMFontDef(cocos2d::_BMFontDef const&);

}

[[link(android)]]
class cocos2d::CCBezierBy {
    ~CCBezierBy();
 
    cocos2d::CCBezierBy* create(float, cocos2d::_ccBezierConfig const&);
 
    TodoReturn CCBezierBy();
    TodoReturn actionWithDuration(float, cocos2d::_ccBezierConfig const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, cocos2d::_ccBezierConfig const&);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCBezierTo {
    ~CCBezierTo();
 
    cocos2d::CCBezierTo* create(float, cocos2d::_ccBezierConfig const&);
 
    TodoReturn CCBezierTo();
    TodoReturn actionWithDuration(float, cocos2d::_ccBezierConfig const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCCallFunc {
    ~CCCallFunc();
 
    cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc);
 
    TodoReturn CCCallFunc();
    TodoReturn actionWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFunc);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn execute();
    TodoReturn initWithTarget(cocos2d::CCObject*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCDirector {
    ~CCDirector();
 
    TodoReturn CCDirector();
    TodoReturn calculateDeltaTime();
    TodoReturn calculateMPF();
    TodoReturn convertToGL(cocos2d::CCPoint const&);
    TodoReturn convertToUI(cocos2d::CCPoint const&);
    TodoReturn createStatsLabel();
    TodoReturn drawScene();
    TodoReturn enableRetinaDisplay(bool);
    TodoReturn end();
    TodoReturn getAccelerometer();
    TodoReturn getActionManager();
    TodoReturn getContentScaleFactor();
    TodoReturn getContentScaleFactorHD();
    TodoReturn getKeypadDispatcher();
    TodoReturn getNotificationNode();
    TodoReturn getOpenGLView();
    TodoReturn getProjection();
    TodoReturn getRunningScene();
    TodoReturn getSceneDelegate();
    TodoReturn getScheduler();
    TodoReturn getTouchDispatcher();
    TodoReturn getWinSize();
    TodoReturn getWinSizeInPixels();
    TodoReturn getZEye();
    bool init();
    bool isSendCleanupToScene();
    TodoReturn pause();
    TodoReturn popScene();
    TodoReturn popToRootScene();
    TodoReturn purgeCachedData();
    TodoReturn purgeDirector();
    TodoReturn pushScene(cocos2d::CCScene*);
    TodoReturn replaceScene(cocos2d::CCScene*);
    TodoReturn reshapeProjection(cocos2d::CCSize const&);
    TodoReturn resume();
    TodoReturn runWithScene(cocos2d::CCScene*);
    void setAccelerometer(cocos2d::CCAccelerometer*);
    void setActionManager(cocos2d::CCActionManager*);
    void setAlphaBlending(bool);
    void setContentScaleFactor(float);
    void setDepthTest(bool);
    void setGLDefaultValues();
    void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*);
    void setNextDeltaTimeZero(bool);
    void setNextScene();
    void setNotificationNode(cocos2d::CCNode*);
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection);
    void setSceneDelegate(cocos2d::CCSceneDelegate*);
    void setScheduler(cocos2d::CCScheduler*);
    void setTouchDispatcher(cocos2d::CCTouchDispatcher*);
    void setWatcherCallbackFun(void*, void (*)(void*));
    TodoReturn sharedDirector();
    TodoReturn showStats();
    TodoReturn updateContentScaleFactor();
    TodoReturn willSwitchToScene(cocos2d::CCScene*);

}

[[link(android)]]
class cocos2d::CCGridBase {
    ~CCGridBase();
 
    cocos2d::CCGridBase* create(cocos2d::_ccGridSize const&);
    cocos2d::CCGridBase* create(cocos2d::_ccGridSize const&, cocos2d::CCTexture2D*, bool);
 
    TodoReturn CCGridBase();
    TodoReturn afterDraw(cocos2d::CCNode*);
    TodoReturn beforeDraw();
    TodoReturn blit();
    TodoReturn calculateVertexPoints();
    TodoReturn getGridSize();
    TodoReturn getReuseGrid();
    TodoReturn getStep();
    TodoReturn gridWithSize(cocos2d::_ccGridSize const&);
    TodoReturn gridWithSize(cocos2d::_ccGridSize const&, cocos2d::CCTexture2D*, bool);
    TodoReturn initWithSize(cocos2d::_ccGridSize const&);
    TodoReturn initWithSize(cocos2d::_ccGridSize const&, cocos2d::CCTexture2D*, bool);
    bool isActive();
    TodoReturn reuse();
    TodoReturn set2DProjection();
    void setActive(bool);
    void setReuseGrid(int);
    void setTextureFlipped(bool);

}

[[link(android)]]
class cocos2d::CCLabelTTF {
    ~CCLabelTTF();
 
    cocos2d::CCLabelTTF* create();
    cocos2d::CCLabelTTF* create(char const*, char const*, float);
    cocos2d::CCLabelTTF* create(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);
    cocos2d::CCLabelTTF* create(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment, char const*, float);
 
    TodoReturn CCLabelTTF();
    TodoReturn description();
    TodoReturn getDimensions();
    TodoReturn getFontName();
    TodoReturn getFontSize();
    TodoReturn getHorizontalAlignment();
    TodoReturn getString();
    TodoReturn getVerticalAlignment();
    bool init();
    TodoReturn initWithString(char const*, char const*, float);
    TodoReturn initWithString(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);
    TodoReturn initWithString(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment, char const*, float);
    TodoReturn labelWithString(char const*, char const*, float);
    TodoReturn labelWithString(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);
    TodoReturn labelWithString(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment, char const*, float);
    TodoReturn node();
    void setDimensions(cocos2d::CCSize&);
    void setFontName(char const*);
    void setFontSize(float);
    void setHorizontalAlignment(cocos2d::CCTextAlignment);
    void setString(char const*);
    void setVerticalAlignment(cocos2d::CCVerticalTextAlignment);
    TodoReturn updateTexture();

}

[[link(android)]]
class cocos2d::CCMenuItem {
    ~CCMenuItem();
 
    cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn CCMenuItem();
    TodoReturn activate();
    TodoReturn initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    bool isEnabled();
    bool isSelected();
    TodoReturn itemWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn rect();
    TodoReturn registerScriptHandler(int);
    TodoReturn selected();
    void setEnabled(bool);
    void setTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn unregisterScriptHandler();
    TodoReturn unselected();

}

[[link(android)]]
class cocos2d::CCProfiler {
    ~CCProfiler();
 
    TodoReturn CCProfiler();
    TodoReturn createAndAddTimerWithName(char const*);
    TodoReturn displayTimers();
    bool init();
    TodoReturn releaseAllTimers();
    TodoReturn releaseTimer(char const*);
    TodoReturn sharedProfiler();

}

[[link(android)]]
class cocos2d::CCRipple3D {
    ~CCRipple3D();
 
    cocos2d::CCRipple3D* create(cocos2d::CCPoint const&, float, int, float, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCRipple3D();
    TodoReturn actionWithPosition(cocos2d::CCPoint const&, float, int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithPosition(cocos2d::CCPoint const&, float, int, float, cocos2d::_ccGridSize const&, float);
    void setPosition(cocos2d::CCPoint const&);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCRotateBy {
    ~CCRotateBy();
 
    cocos2d::CCRotateBy* create(float, float);
 
    TodoReturn CCRotateBy();
    TodoReturn actionWithDuration(float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCRotateTo {
    ~CCRotateTo();
 
    cocos2d::CCRotateTo* create(float, float);
 
    TodoReturn CCRotateTo();
    TodoReturn actionWithDuration(float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, float);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSequence {
    ~CCSequence();
 
    cocos2d::CCSequence* create(cocos2d::CCArray*);
    // cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
    cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
 
    TodoReturn CCSequence();
    TodoReturn actionOneTwo(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
    TodoReturn actionWithArray(cocos2d::CCArray*);
    // TodoReturn actions(cocos2d::CCFiniteTimeAction*, ...);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initOneTwo(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCStopGrid {
    ~CCStopGrid();
 
    cocos2d::CCStopGrid* create();
 
    TodoReturn CCStopGrid();
    TodoReturn action();
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCTMXLayer {
    ~CCTMXLayer();
 
    cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
 
    TodoReturn CCTMXLayer();
    TodoReturn addChild(cocos2d::CCNode*, int, int);
    TodoReturn appendTileForGID(unsigned int, cocos2d::CCPoint const&);
    TodoReturn atlasIndexForExistantZ(unsigned int);
    TodoReturn atlasIndexForNewZ(int);
    TodoReturn calculateLayerOffset(cocos2d::CCPoint const&);
    TodoReturn getLayerName();
    TodoReturn getLayerOrientation();
    TodoReturn getLayerSize();
    TodoReturn getMapTileSize();
    TodoReturn getProperties();
    TodoReturn getTileSet();
    TodoReturn getTiles();
    TodoReturn initWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    TodoReturn insertTileForGID(unsigned int, cocos2d::CCPoint const&);
    TodoReturn layerWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    TodoReturn parseInternalProperties();
    TodoReturn positionAt(cocos2d::CCPoint const&);
    TodoReturn positionForHexAt(cocos2d::CCPoint const&);
    TodoReturn positionForIsoAt(cocos2d::CCPoint const&);
    TodoReturn positionForOrthoAt(cocos2d::CCPoint const&);
    TodoReturn propertyNamed(char const*);
    TodoReturn releaseMap();
    TodoReturn removeChild(cocos2d::CCNode*, bool);
    TodoReturn removeTileAt(cocos2d::CCPoint const&);
    TodoReturn reusedTileWithRect(cocos2d::CCRect);
    void setLayerOrientation(unsigned int);
    void setLayerSize(cocos2d::CCSize const&);
    void setMapTileSize(cocos2d::CCSize const&);
    void setProperties(cocos2d::CCDictionary*);
    void setTileGID(unsigned int, cocos2d::CCPoint const&);
    void setTileGID(unsigned int, cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags_);
    void setTileSet(cocos2d::CCTMXTilesetInfo*);
    void setTiles(unsigned int*);
    TodoReturn setupTileSprite(cocos2d::CCSprite*, cocos2d::CCPoint, unsigned int);
    TodoReturn setupTiles();
    TodoReturn tileAt(cocos2d::CCPoint const&);
    TodoReturn tileGIDAt(cocos2d::CCPoint const&);
    TodoReturn tileGIDAt(cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags_*);
    TodoReturn updateTileForGID(unsigned int, cocos2d::CCPoint const&);
    TodoReturn vertexZForPos(cocos2d::CCPoint const&);

}

[[link(android)]]
class cocos2d::CCAnimation {
    ~CCAnimation();
 
    cocos2d::CCAnimation* create();
    cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
    cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int);
 
    TodoReturn CCAnimation();
    TodoReturn addSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn addSpriteFrameWithFileName(char const*);
    TodoReturn addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    TodoReturn animation();
    TodoReturn animationWithAnimationFrames(cocos2d::CCArray*, float, unsigned int);
    TodoReturn animationWithSpriteFrames(cocos2d::CCArray*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn getDelayPerUnit();
    TodoReturn getDuration();
    TodoReturn getFrames();
    TodoReturn getLoops();
    TodoReturn getRestoreOriginalFrame();
    TodoReturn getTotalDelayUnits();
    bool init();
    TodoReturn initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int);
    TodoReturn initWithSpriteFrames(cocos2d::CCArray*, float);
    void setDelayPerUnit(float);
    void setFrames(cocos2d::CCArray*);
    void setLoops(unsigned int);
    void setRestoreOriginalFrame(bool);

}

[[link(android)]]
class cocos2d::CCAtlasNode {
    ~CCAtlasNode();
 
    cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int);
 
    TodoReturn CCAtlasNode();
    TodoReturn atlasWithTileFile(char const*, unsigned int, unsigned int, unsigned int);
    TodoReturn calculateMaxItems();
    TodoReturn draw();
    TodoReturn getBlendFunc();
    TodoReturn getColor();
    TodoReturn getOpacity();
    TodoReturn getQuadsToDraw();
    TodoReturn getTexture();
    TodoReturn getTextureAtlas();
    TodoReturn initWithTileFile(char const*, unsigned int, unsigned int, unsigned int);
    bool isOpacityModifyRGB();
    void setBlendFunc(cocos2d::_ccBlendFunc);
    void setColor(cocos2d::ccColor3B const&);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setQuadsToDraw(unsigned int);
    void setTexture(cocos2d::CCTexture2D*);
    void setTextureAtlas(cocos2d::CCTextureAtlas*);
    TodoReturn updateAtlasValues();
    TodoReturn updateBlendFunc();
    TodoReturn updateOpacityModifyRGB();

}

[[link(android)]]
class cocos2d::CCCallFuncN {
    ~CCCallFuncN();
 
    cocos2d::CCCallFuncN* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncN);
 
    TodoReturn CCCallFuncN();
    TodoReturn actionWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncN);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn execute();
    TodoReturn initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncN);

}

[[link(android)]]
class cocos2d::CCCallFuncO {
    ~CCCallFuncO();
 
    cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, cocos2d::CCObject*);
 
    TodoReturn CCCallFuncO();
    TodoReturn actionWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, cocos2d::CCObject*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn execute();
    TodoReturn initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, cocos2d::CCObject*);

}

[[link(android)]]
class cocos2d::CCDelayTime {
    ~CCDelayTime();
 
    cocos2d::CCDelayTime* create(float);
 
    TodoReturn CCDelayTime();
    TodoReturn actionWithDuration(float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCDictMaker {
    ~CCDictMaker();
 
    TodoReturn CCDictMaker();
    TodoReturn arrayWithContentsOfFile(char const*);
    TodoReturn dictionaryWithContentsOfFile(char const*);
    TodoReturn endElement(void*, char const*);
    TodoReturn startElement(void*, char const*, char const**);
    TodoReturn textHandler(void*, char const*, int);

}

[[link(android)]]
class cocos2d::CCEaseInOut {
    ~CCEaseInOut();
 
    cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseInOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFileUtils {
    TodoReturn existFileData(char const*);
    TodoReturn existFileDataFromZip(char const*, char const*);
    TodoReturn fullPathFromRelativeFile(char const*, char const*);
    TodoReturn fullPathFromRelativePath(char const*);
    TodoReturn fullPathFromRelativePathGet(char const*);
    TodoReturn getFileData(char const*, char const*, unsigned long*);
    TodoReturn getFileDataFromZip(char const*, char const*, unsigned long*);
    TodoReturn getWriteablePath();
    TodoReturn iPadFileExistsAtPath(char const*);
    TodoReturn iPadRetinaDisplayFileExistsAtPath(char const*);
    TodoReturn iPhoneRetinaDisplayFileExistsAtPath(char const*);
    bool isPopupNotify();
    TodoReturn purgeCachedEntries();
    TodoReturn purgeFileUtils();
    TodoReturn removeSuffixFromFile(gd::string&);
    void setPopupNotify(bool);
    void setResourcePath(char const*);
    TodoReturn setiPadRetinaDisplaySuffix(char const*);
    TodoReturn setiPadSuffix(char const*);
    TodoReturn setiPhoneRetinaDisplaySuffix(char const*);
    TodoReturn sharedFileUtils();

}

[[link(android)]]
class cocos2d::CCGLProgram {
    ~CCGLProgram();
 
    TodoReturn CCGLProgram();
    TodoReturn addAttribute(char const*, unsigned int);
    TodoReturn compileShader(unsigned int*, unsigned int, char const*);
    TodoReturn description();
    TodoReturn fragmentShaderLog();
    TodoReturn getProgram();
    TodoReturn initWithVertexShaderByteArray(char const*, char const*);
    TodoReturn initWithVertexShaderFilename(char const*, char const*);
    TodoReturn link();
    TodoReturn logForOpenGLObject(unsigned int, void (*)(unsigned int, unsigned int, int*), void (*)(unsigned int, int, int*, char*));
    TodoReturn programLog();
    TodoReturn reset();
    void setUniformForModelViewProjectionMatrix();
    void setUniformLocationWith1f(unsigned int, float);
    void setUniformLocationWith1i(unsigned int, int);
    void setUniformLocationWith2f(unsigned int, float, float);
    void setUniformLocationWith2fv(unsigned int, float*, unsigned int);
    void setUniformLocationWith3f(unsigned int, float, float, float);
    void setUniformLocationWith3fv(unsigned int, float*, unsigned int);
    void setUniformLocationWith4f(unsigned int, float, float, float, float);
    void setUniformLocationWith4fv(unsigned int, float*, unsigned int);
    void setUniformLocationwithMatrix4fv(unsigned int, float*, unsigned int);
    TodoReturn updateUniformLocation(unsigned int, void*, unsigned int);
    TodoReturn updateUniforms();
    TodoReturn use();
    TodoReturn vertexShaderLog();

}

[[link(android)]]
class cocos2d::CCLightning {
    ~CCLightning();
 
    TodoReturn CCLightning();
    TodoReturn draw();
    TodoReturn getColor();
    TodoReturn getDisplacement();
    TodoReturn getLineWidth();
    TodoReturn getMinDisplacement();
    TodoReturn getOpacity();
    TodoReturn getSeed();
    TodoReturn getSpilt();
    TodoReturn getStrikePoint();
    TodoReturn getStrikePoint2();
    TodoReturn initWithStrikePoint(cocos2d::CCPoint);
    TodoReturn initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint);
    bool isOpacityModifyRGB();
    TodoReturn lightningWithStrikePoint(cocos2d::CCPoint);
    TodoReturn lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint);
    void setColor(cocos2d::ccColor3B const&);
    void setDisplacement(int);
    void setLineWidth(float);
    void setMinDisplacement(int);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setSeed(unsigned long);
    void setSpilt(bool);
    void setStrikePoint(cocos2d::CCPoint);
    void setStrikePoint2(cocos2d::CCPoint);
    TodoReturn strike();
    TodoReturn strikeRandom();
    TodoReturn strikeWithSeed(unsigned long);

}

[[link(android)]]
class cocos2d::CCReuseGrid {
    ~CCReuseGrid();
 
    cocos2d::CCReuseGrid* create(int);
 
    TodoReturn CCReuseGrid();
    TodoReturn actionWithTimes(int);
    TodoReturn initWithTimes(int);
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCSAXParser {
    ~CCSAXParser();
 
    TodoReturn CCSAXParser();
    TodoReturn endElement(void*, unsigned char const*);
    bool init(char const*);
    TodoReturn parse(char const*);
    TodoReturn parse(char const*, unsigned int);
    void setDelegator(cocos2d::CCSAXDelegator*);
    TodoReturn startElement(void*, unsigned char const*, unsigned char const**);
    TodoReturn textHandler(void*, unsigned char const*, int);

}

[[link(android)]]
class cocos2d::CCScheduler {
    ~CCScheduler();
 
    TodoReturn CCScheduler();
    TodoReturn appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool);
    bool isTargetPaused(cocos2d::CCObject*);
    TodoReturn pauseAllTargets();
    TodoReturn pauseAllTargetsWithMinPriority(int);
    TodoReturn pauseTarget(cocos2d::CCObject*);
    TodoReturn priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    TodoReturn removeHashElement(cocos2d::_hashSelectorEntry*);
    TodoReturn removeUpdateFromHash(cocos2d::_listEntry*);
    TodoReturn resumeTarget(cocos2d::CCObject*);
    TodoReturn resumeTargets(cocos2d::CCSet*);
    TodoReturn scheduleScriptFunc(unsigned int, float, bool);
    TodoReturn scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool);
    TodoReturn scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool, unsigned int, float);
    TodoReturn scheduleUpdateForTarget(cocos2d::CCObject*, int, bool);
    TodoReturn unscheduleAllSelectors();
    TodoReturn unscheduleAllSelectorsForTarget(cocos2d::CCObject*);
    TodoReturn unscheduleAllSelectorsWithMinPriority(int);
    TodoReturn unscheduleScriptEntry(unsigned int);
    TodoReturn unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*);
    TodoReturn unscheduleUpdateForTarget(cocos2d::CCObject const*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSplitCols {
    ~CCSplitCols();
 
    cocos2d::CCSplitCols* create(int, float);
 
    TodoReturn CCSplitCols();
    TodoReturn actionWithCols(int, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithCols(int, float);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSplitRows {
    ~CCSplitRows();
 
    cocos2d::CCSplitRows* create(int, float);
 
    TodoReturn CCSplitRows();
    TodoReturn actionWithRows(int, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithRows(int, float);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTexture2D {
    ~CCTexture2D();
 
    TodoReturn CCTexture2D();
    TodoReturn PVRImagesHavePremultipliedAlpha(bool);
    TodoReturn bitsPerPixelForFormat();
    TodoReturn bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat);
    TodoReturn defaultAlphaPixelFormat();
    TodoReturn description();
    TodoReturn drawAtPoint(cocos2d::CCPoint const&);
    TodoReturn drawInRect(cocos2d::CCRect const&);
    TodoReturn generateMipmap();
    TodoReturn getContentSize();
    TodoReturn getContentSizeInPixels();
    TodoReturn getMaxS();
    TodoReturn getMaxT();
    TodoReturn getName();
    TodoReturn getPixelFormat();
    TodoReturn getPixelsHigh();
    TodoReturn getPixelsWide();
    TodoReturn getResolutionType();
    TodoReturn getShaderProgram();
    TodoReturn hasMipmaps();
    TodoReturn hasPremultipliedAlpha();
    TodoReturn initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int);
    TodoReturn initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&);
    TodoReturn initWithImage(cocos2d::CCImage*);
    TodoReturn initWithImage(cocos2d::CCImage*, cocos2d::ccResolutionType);
    TodoReturn initWithPVRFile(char const*);
    TodoReturn initWithString(char const*, char const*, float);
    TodoReturn initWithString(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment, char const*, float);
    TodoReturn keepData(void*, unsigned int);
    TodoReturn releaseData(void*);
    void setAliasTexParameters();
    void setAntiAliasTexParameters();
    void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);
    void setMaxS(float);
    void setMaxT(float);
    void setResolutionType(cocos2d::ccResolutionType);
    void setShaderProgram(cocos2d::CCGLProgram*);
    void setTexParameters(cocos2d::_ccTexParams*);
    TodoReturn stringForFormat();

}

[[link(android)]]
class cocos2d::_AsyncStruct {
    ~_AsyncStruct();
 
    TodoReturn _AsyncStruct();

}

[[link(android)]]
class cocos2d::CCActionEase {
    ~CCActionEase();
 
    cocos2d::CCActionEase* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCActionEase();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithAction(cocos2d::CCActionInterval*);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCCallFuncND {
    ~CCCallFuncND();
 
    cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*);
 
    TodoReturn CCCallFuncND();
    TodoReturn actionWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn execute();
    TodoReturn initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*);

}

[[link(android)]]
class cocos2d::CCDictionary {
    ~CCDictionary();
 
    cocos2d::CCDictionary* create();
    cocos2d::CCDictionary* create(char const*);
    cocos2d::CCDictionary* create(cocos2d::CCDictionary*);
 
    TodoReturn CCDictionary();
    TodoReturn allKeys();
    TodoReturn allKeysForObject(cocos2d::CCObject*);
    TodoReturn charForKey(gd::string const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn count();
    TodoReturn createWithContentsOfFileThreadSafe(char const*);
    TodoReturn dictionary();
    TodoReturn dictionaryWithContentsOfFile(char const*);
    TodoReturn dictionaryWithContentsOfFileThreadSafe(char const*);
    TodoReturn dictionaryWithDictionary(cocos2d::CCDictionary*);
    TodoReturn objectForKey(gd::string const&);
    TodoReturn objectForKey(int);
    TodoReturn removeAllObjects();
    TodoReturn removeObjectForElememt(cocos2d::CCDictElement*);
    TodoReturn removeObjectForKey(gd::string const&);
    TodoReturn removeObjectForKey(int);
    TodoReturn removeObjectsForKeys(cocos2d::CCArray*);
    void setObject(cocos2d::CCObject*, gd::string const&);
    void setObject(cocos2d::CCObject*, int);
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
    void setObjectUnSafe(cocos2d::CCObject*, int);
    TodoReturn valueForKey(gd::string const&);
    TodoReturn valueForKey(int);

}

[[link(android)]]
class cocos2d::CCEaseBackIn {
    ~CCEaseBackIn();
 
    cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseBackIn();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseBounce {
    ~CCEaseBounce();
 
    cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseBounce();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn bounceTime(float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();

}

[[link(android)]]
class cocos2d::CCEaseSineIn {
    ~CCEaseSineIn();
 
    cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseSineIn();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCGridAction {
    ~CCGridAction();
 
    cocos2d::CCGridAction* create(cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCGridAction();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn getGrid();
    TodoReturn initWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCLabelAtlas {
    ~CCLabelAtlas();
 
    cocos2d::CCLabelAtlas* create(char const*, char const*);
    cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int);
 
    TodoReturn CCLabelAtlas();
    TodoReturn getString();
    TodoReturn initWithString(char const*, char const*);
    TodoReturn initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int);
    TodoReturn labelWithString(char const*, char const*);
    TodoReturn labelWithString(char const*, char const*, unsigned int, unsigned int, unsigned int);
    void setString(char const*);
    TodoReturn updateAtlasValues();

}

[[link(android)]]
class cocos2d::CCLayerColor {
    ~CCLayerColor();
 
    cocos2d::CCLayerColor* create();
    cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&);
    cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float);
 
    TodoReturn CCLayerColor();
    TodoReturn changeHeight(float);
    TodoReturn changeWidth(float);
    TodoReturn changeWidthAndHeight(float, float);
    TodoReturn draw();
    TodoReturn getBlendFunc();
    TodoReturn getColor();
    TodoReturn getOpacity();
    bool init();
    TodoReturn initWithColor(cocos2d::ccColor4B const&);
    TodoReturn initWithColor(cocos2d::ccColor4B const&, float, float);
    bool isOpacityModifyRGB();
    TodoReturn layerWithColor(cocos2d::ccColor4B const&);
    TodoReturn layerWithColor(cocos2d::ccColor4B const&, float, float);
    void setBlendFunc(cocos2d::_ccBlendFunc);
    void setColor(cocos2d::ccColor3B const&);
    void setContentSize(cocos2d::CCSize const&);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    TodoReturn updateColor();

}

[[link(android)]]
class cocos2d::CCPageTurn3D {
    ~CCPageTurn3D();
 
    cocos2d::CCPageTurn3D* create(cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCPageTurn3D();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCPointArray {
    ~CCPointArray();
 
    cocos2d::CCPointArray* create(unsigned int);
 
    TodoReturn CCPointArray();
    TodoReturn addControlPoint(cocos2d::CCPoint);
    TodoReturn arrayWithCapacity(unsigned int);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn count();
    TodoReturn getControlPointAtIndex(unsigned int);
    TodoReturn initWithCapacity(unsigned int);
    TodoReturn insertControlPoint(cocos2d::CCPoint&, unsigned int);
    TodoReturn removeControlPointAtIndex(unsigned int);
    TodoReturn replaceControlPoint(cocos2d::CCPoint&, unsigned int);
    TodoReturn reverse();
    TodoReturn reverseInline();
    void setControlPoints(cocos2d::CCArray*);

}

[[link(android)]]
class cocos2d::CCProgressTo {
    ~CCProgressTo();
 
    cocos2d::CCProgressTo* create(float, float);
 
    TodoReturn CCProgressTo();
    TodoReturn actionWithDuration(float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, float);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTexturePVR {
    ~CCTexturePVR();
 
    TodoReturn CCTexturePVR();
    TodoReturn createGLTexture();
    TodoReturn getFormat();
    TodoReturn getHeight();
    TodoReturn getName();
    TodoReturn getNumberOfMipmaps();
    TodoReturn getWidth();
    TodoReturn initWithContentsOfFile(char const*);
    TodoReturn pvrTextureWithContentsOfFile(char const*);
    void setRetainName(bool);
    TodoReturn unpackPVRData(unsigned char*, unsigned int);

}

[[link(android)]]
class cocos2d::CCTMXMapInfo {
    ~CCTMXMapInfo();
 
    TodoReturn CCTMXMapInfo();
    TodoReturn endElement(void*, char const*);
    TodoReturn formatWithTMXFile(char const*);
    TodoReturn formatWithXML(char const*, char const*);
    TodoReturn getCurrentString();
    TodoReturn getLayerAttribs();
    TodoReturn getLayers();
    TodoReturn getMapSize();
    TodoReturn getObjectGroups();
    TodoReturn getOrientation();
    TodoReturn getParentElement();
    TodoReturn getParentGID();
    TodoReturn getProperties();
    TodoReturn getStoringCharacters();
    TodoReturn getTMXFileName();
    TodoReturn getTileProperties();
    TodoReturn getTileSize();
    TodoReturn getTilesets();
    TodoReturn initWithTMXFile(char const*);
    TodoReturn initWithXML(char const*, char const*);
    TodoReturn internalInit(char const*, char const*);
    TodoReturn parseXMLFile(char const*);
    TodoReturn parseXMLString(char const*);
    void setCurrentString(char const*);
    void setLayerAttribs(int);
    void setLayers(cocos2d::CCArray*);
    void setMapSize(cocos2d::CCSize const&);
    void setObjectGroups(cocos2d::CCArray*);
    void setOrientation(int);
    void setParentElement(int);
    void setParentGID(unsigned int);
    void setProperties(cocos2d::CCDictionary*);
    void setStoringCharacters(bool);
    void setTileProperties(cocos2d::CCDictionary*);
    void setTileSize(cocos2d::CCSize const&);
    void setTilesets(cocos2d::CCArray*);
    TodoReturn startElement(void*, char const*, char const**);
    TodoReturn textHandler(void*, char const*, int);

}

[[link(android)]]
class cocos2d::CCActionTween {
    ~CCActionTween();
 
    cocos2d::CCActionTween* create(float, char const*, float, float);
 
    TodoReturn CCActionTween();
    TodoReturn actionWithDuration(float, char const*, float, float);
    TodoReturn initWithDuration(float, char const*, float, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCApplication {
    ~CCApplication();
 
    TodoReturn CCApplication();
    TodoReturn getCurrentLanguage();
    TodoReturn openURL(char const*);
    TodoReturn run();
    void setAnimationInterval(double);
    void setOrientation(cocos2d::CCApplication::Orientation);
    TodoReturn sharedApplication();

}

[[link(android)]]
class cocos2d::CCDictElement {
    TodoReturn CCDictElement(char const*, cocos2d::CCObject*);
    TodoReturn CCDictElement(int, cocos2d::CCObject*);
    TodoReturn getIntKey();
    TodoReturn getObject();
    TodoReturn getStrKey();
    bool init();

}

[[link(android)]]
class cocos2d::CCEaseBackOut {
    ~CCEaseBackOut();
 
    cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseBackOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseElastic {
    ~CCEaseElastic();
 
    cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseElastic();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn reverse();

}

[[link(android)]]
class cocos2d::CCEaseSineOut {
    ~CCEaseSineOut();
 
    cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseSineOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCIMEDelegate {
    ~CCIMEDelegate();
 
    TodoReturn CCIMEDelegate();
    TodoReturn attachWithIME();
    TodoReturn canAttachWithIME();
    TodoReturn canDetachWithIME();
    TodoReturn deleteBackward();
    TodoReturn detachWithIME();
    TodoReturn didAttachWithIME();
    TodoReturn didDetachWithIME();
    TodoReturn getContentText();
    TodoReturn insertText(char const*, int);
    TodoReturn keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    TodoReturn keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    TodoReturn keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    TodoReturn keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);

}

[[link(android)]]
class cocos2d::CCJumpTiles3D {
    ~CCJumpTiles3D();
 
    cocos2d::CCJumpTiles3D* create(int, float, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCJumpTiles3D();
    TodoReturn actionWithJumps(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithJumps(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCLabelBMFont {
    ~CCLabelBMFont();
 
    cocos2d::CCLabelBMFont* create();
    cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
 
    TodoReturn CCLabelBMFont();
    TodoReturn createFontChars();
    TodoReturn getColor();
    TodoReturn getFntFile();
    TodoReturn getLetterPosXLeft(cocos2d::CCSprite*);
    TodoReturn getLetterPosXRight(cocos2d::CCSprite*);
    TodoReturn getOpacity();
    TodoReturn getString();
    bool init();
    TodoReturn initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
    bool isOpacityModifyRGB();
    TodoReturn kerningAmountForFirst(unsigned short, unsigned short);
    TodoReturn labelWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
    TodoReturn node();
    TodoReturn purgeCachedData();
    void setAlignment(cocos2d::CCTextAlignment);
    void setAnchorPoint(cocos2d::CCPoint const&);
    void setCString(char const*);
    void setColor(cocos2d::ccColor3B const&);
    void setFntFile(char const*);
    void setLineBreakWithoutSpace(bool);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setScale(float);
    void setScaleX(float);
    void setScaleY(float);
    void setString(char const*);
    void setString(char const*, bool);
    void setWidth(float);
    TodoReturn updateLabel();
    TodoReturn updateString(bool);

}

[[link(android)]]
class cocos2d::CCOrbitCamera {
    ~CCOrbitCamera();
 
    cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float);
 
    TodoReturn CCOrbitCamera();
    TodoReturn actionWithDuration(float, float, float, float, float, float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, float, float, float, float, float, float);
    TodoReturn sphericalRadius(float*, float*, float*);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCParticleSun {
    ~CCParticleSun();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCPointObject {
    ~CCPointObject();
 
    TodoReturn CCPointObject();
    TodoReturn getChild();
    TodoReturn getOffset();
    TodoReturn getRatio();
    TodoReturn initWithCCPoint(cocos2d::CCPoint, cocos2d::CCPoint);
    TodoReturn pointWithCCPoint(cocos2d::CCPoint, cocos2d::CCPoint);
    void setChild(cocos2d::CCNode*);
    void setOffset(cocos2d::CCPoint);
    void setRatio(cocos2d::CCPoint);

}

[[link(android)]]
class cocos2d::CCPoolManager {
    ~CCPoolManager();
 
    TodoReturn CCPoolManager();
    TodoReturn addObject(cocos2d::CCObject*);
    TodoReturn finalize();
    TodoReturn getCurReleasePool();
    TodoReturn pop();
    TodoReturn purgePoolManager();
    TodoReturn push();
    TodoReturn removeObject(cocos2d::CCObject*);
    TodoReturn sharedPoolManager();

}

[[link(android)]]
class cocos2d::CCReverseTime {
    ~CCReverseTime();
 
    cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*);
 
    TodoReturn CCReverseTime();
    TodoReturn actionWithAction(cocos2d::CCFiniteTimeAction*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithAction(cocos2d::CCFiniteTimeAction*);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCScrollLayer {
    ~CCScrollLayer();
 
    TodoReturn CCScrollLayer();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn getCurrentScreen();
    TodoReturn getDelegate();
    TodoReturn getMarginOffset();
    TodoReturn getMinimumTouchLengthToChangePage();
    TodoReturn getMinimumTouchLengthToSlide();
    TodoReturn getPages();
    TodoReturn getPagesIndicatorPosition();
    TodoReturn getPagesWidthOffset();
    TodoReturn getShowPagesIndicator();
    TodoReturn getStealTouches();
    TodoReturn initWithLayers(cocos2d::CCArray*, int);
    TodoReturn nodeWithLayers(cocos2d::CCArray*, int);
    void setDelegate(cocos2d::CCScrollLayerDelegate*);
    void setMarginOffset(float);
    void setMaximumScrollHeight(float);
    void setMinimumTouchLengthToChangePage(float);
    void setMinimumTouchLengthToSlide(float);
    void setPagesIndicatorPosition(cocos2d::CCPoint const&);
    void setPagesWidthOffset(float);
    void setShowPagesIndicator(bool);
    void setStealTouches(bool);

}

[[link(android)]]
class cocos2d::CCShaderCache {
    ~CCShaderCache();
 
    TodoReturn CCShaderCache();
    TodoReturn addProgram(cocos2d::CCGLProgram*, char const*);
    bool init();
    TodoReturn loadDefaultShader(cocos2d::CCGLProgram*, int);
    TodoReturn loadDefaultShaders();
    TodoReturn programForKey(char const*);
    TodoReturn purgeSharedShaderCache();
    TodoReturn reloadDefaultShaders();
    TodoReturn sharedShaderCache();

}

[[link(android)]]
class cocos2d::CCSpriteFrame {
    ~CCSpriteFrame();
 
    cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&);
    cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    cocos2d::CCSpriteFrame* create(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    cocos2d::CCSpriteFrame* create(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
 
    TodoReturn CCSpriteFrame();
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn frameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    TodoReturn frameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    TodoReturn frameWithTextureFilename(char const*, cocos2d::CCRect const&);
    TodoReturn frameWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    TodoReturn getOffset();
    TodoReturn getOffsetInPixels();
    TodoReturn getOriginalSize();
    TodoReturn getRect();
    TodoReturn getTexture();
    TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    TodoReturn initWithTextureFilename(char const*, cocos2d::CCRect const&);
    TodoReturn initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    bool isRotated();
    void setOffset(cocos2d::CCPoint const&);
    void setOffsetInPixels(cocos2d::CCPoint const&);
    void setRect(cocos2d::CCRect const&);
    void setRectInPixels(cocos2d::CCRect const&);
    void setTexture(cocos2d::CCTexture2D*);

}

[[link(android)]]
class cocos2d::CCTiledGrid3D {
    ~CCTiledGrid3D();
 
    TodoReturn CCTiledGrid3D();
    TodoReturn blit();
    TodoReturn calculateVertexPoints();
    TodoReturn gridWithSize(cocos2d::_ccGridSize const&);
    TodoReturn gridWithSize(cocos2d::_ccGridSize const&, cocos2d::CCTexture2D*, bool);
    TodoReturn originalTile(cocos2d::_ccGridSize const&);
    TodoReturn reuse();
    void setTile(cocos2d::_ccGridSize const&, cocos2d::_ccQuad3 const&);
    TodoReturn tile(cocos2d::_ccGridSize const&);

}

[[link(android)]]
class cocos2d::CCTMXTiledMap {
    ~CCTMXTiledMap();
 
    cocos2d::CCTMXTiledMap* create(char const*);
    cocos2d::CCTMXTiledMap* create(char const*, char const*);
 
    TodoReturn CCTMXTiledMap();
    TodoReturn buildWithMapInfo(cocos2d::CCTMXMapInfo*);
    TodoReturn getMapOrientation();
    TodoReturn getMapSize();
    TodoReturn getObjectGroups();
    TodoReturn getProperties();
    TodoReturn getTileSize();
    TodoReturn initWithTMXFile(char const*);
    TodoReturn initWithXML(char const*, char const*);
    TodoReturn layerNamed(char const*);
    TodoReturn objectGroupNamed(char const*);
    TodoReturn parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    TodoReturn propertiesForGID(int);
    TodoReturn propertyNamed(char const*);
    void setMapOrientation(int);
    void setMapSize(cocos2d::CCSize const&);
    void setObjectGroups(cocos2d::CCArray*);
    void setProperties(cocos2d::CCDictionary*);
    void setTileSize(cocos2d::CCSize const&);
    TodoReturn tiledMapWithTMXFile(char const*);
    TodoReturn tiledMapWithXML(char const*, char const*);
    TodoReturn tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

}

[[link(android)]]
class cocos2d::CCUserDefault {
    ~CCUserDefault();
 
    TodoReturn CCUserDefault();
    TodoReturn createXMLFile();
    TodoReturn flush();
    TodoReturn getBoolForKey(char const*, bool);
    TodoReturn getDoubleForKey(char const*, double);
    TodoReturn getFloatForKey(char const*, float);
    TodoReturn getIntegerForKey(char const*, int);
    TodoReturn getStringForKey(char const*, gd::string const&);
    TodoReturn getXMLFilePath();
    TodoReturn initXMLFilePath();
    bool isXMLFileExist();
    TodoReturn purgeSharedUserDefault();
    void setBoolForKey(char const*, bool);
    void setDoubleForKey(char const*, double);
    void setFloatForKey(char const*, float);
    void setIntegerForKey(char const*, int);
    void setStringForKey(char const*, gd::string const&);
    TodoReturn sharedUserDefault();

}

[[link(android)]]
class cocos2d::CCActionCamera {
    ~CCActionCamera();
 
    TodoReturn CCActionCamera();
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCCatmullRomBy {
    ~CCCatmullRomBy();
 
    cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*);
 
    TodoReturn CCCatmullRomBy();
    TodoReturn actionWithDuration(float, cocos2d::CCPointArray*);
    TodoReturn initWithDuration(float, cocos2d::CCPointArray*);

}

[[link(android)]]
class cocos2d::CCCatmullRomTo {
    ~CCCatmullRomTo();
 
    cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*);
 
    TodoReturn CCCatmullRomTo();
    TodoReturn actionWithDuration(float, cocos2d::CCPointArray*);
    TodoReturn initWithDuration(float, cocos2d::CCPointArray*);

}

[[link(android)]]
class cocos2d::CCEaseBounceIn {
    ~CCEaseBounceIn();
 
    cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseBounceIn();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCGrid3DAction {
    ~CCGrid3DAction();
 
    TodoReturn CCGrid3DAction();
    TodoReturn getGrid();
    TodoReturn originalVertex(cocos2d::_ccGridSize const&);
    void setVertex(cocos2d::_ccGridSize const&, cocos2d::_ccVertex3F const&);
    TodoReturn vertex(cocos2d::_ccGridSize const&);

}

[[link(android)]]
class cocos2d::CCMenuItemFont {
    ~CCMenuItemFont();
 
    cocos2d::CCMenuItemFont* create(char const*);
    cocos2d::CCMenuItemFont* create(char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn CCMenuItemFont();
    TodoReturn fontName();
    TodoReturn fontNameObj();
    TodoReturn fontSize();
    TodoReturn fontSizeObj();
    TodoReturn initWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn itemWithString(char const*);
    TodoReturn itemWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn recreateLabel();
    void setFontName(char const*);
    void setFontNameObj(char const*);
    void setFontSize(unsigned int);
    void setFontSizeObj(unsigned int);

}

[[link(android)]]
class cocos2d::CCMotionStreak {
    ~CCMotionStreak();
 
    cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B, char const*);
    cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B, cocos2d::CCTexture2D*);
 
    TodoReturn CCMotionStreak();
    TodoReturn draw();
    TodoReturn getBlendFunc();
    TodoReturn getColor();
    TodoReturn getOpacity();
    TodoReturn getTexture();
    TodoReturn initWithFade(float, float, float, cocos2d::ccColor3B, char const*);
    TodoReturn initWithFade(float, float, float, cocos2d::ccColor3B, cocos2d::CCTexture2D*);
    bool isOpacityModifyRGB();
    TodoReturn reset();
    TodoReturn resumeStroke();
    void setBlendFunc(cocos2d::_ccBlendFunc);
    void setColor(cocos2d::ccColor3B const&);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setPosition(cocos2d::CCPoint const&);
    void setTexture(cocos2d::CCTexture2D*);
    TodoReturn stopStroke();
    TodoReturn streakWithFade(float, float, float, cocos2d::ccColor3B, char const*);
    TodoReturn streakWithFade(float, float, float, cocos2d::ccColor3B, cocos2d::CCTexture2D*);
    TodoReturn tintWithColor(cocos2d::ccColor3B);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCParallaxNode {
    ~CCParallaxNode();
 
    cocos2d::CCParallaxNode* create();
 
    TodoReturn CCParallaxNode();
    TodoReturn absolutePosition();
    TodoReturn addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    TodoReturn addChild(cocos2d::CCNode*, unsigned int, int);
    TodoReturn getParallaxArray();
    TodoReturn node();
    TodoReturn removeAllChildrenWithCleanup(bool);
    TodoReturn removeChild(cocos2d::CCNode*, bool);
    void setParallaxArray(cocos2d::_ccArray*);
    TodoReturn visit();

}

[[link(android)]]
class cocos2d::CCParticleFire {
    ~CCParticleFire();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCParticleRain {
    ~CCParticleRain();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCParticleSnow {
    ~CCParticleSnow();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCRGBAProtocol {
    TodoReturn CCRGBAProtocol();

}

[[link(android)]]
class cocos2d::CCSAXDelegator {
    TodoReturn CCSAXDelegator();

}

[[link(android)]]
class cocos2d::CCShakyTiles3D {
    ~CCShakyTiles3D();
 
    cocos2d::CCShakyTiles3D* create(int, bool, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCShakyTiles3D();
    TodoReturn actionWithRange(int, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithRange(int, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCShuffleTiles {
    ~CCShuffleTiles();
 
    cocos2d::CCShuffleTiles* create(int, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCShuffleTiles();
    TodoReturn actionWithSeed(int, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn getDelta(cocos2d::_ccGridSize const&);
    TodoReturn initWithSeed(int, cocos2d::_ccGridSize const&, float);
    TodoReturn placeTile(cocos2d::_ccGridSize const&, cocos2d::Tile*);
    TodoReturn shuffle(int*, unsigned int);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTextFieldTTF {
    ~CCTextFieldTTF();
 
    TodoReturn CCTextFieldTTF();
    TodoReturn attachWithIME();
    TodoReturn canAttachWithIME();
    TodoReturn canDetachWithIME();
    TodoReturn deleteBackward();
    TodoReturn detachWithIME();
    TodoReturn draw();
    TodoReturn getCharCount();
    TodoReturn getColorSpaceHolder();
    TodoReturn getContentText();
    TodoReturn getDelegate();
    TodoReturn getPlaceHolder();
    TodoReturn getString();
    TodoReturn initWithPlaceHolder(char const*, char const*, float);
    TodoReturn initWithPlaceHolder(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);
    TodoReturn insertText(char const*, int);
    void setColorSpaceHolder(cocos2d::ccColor3B const&);
    void setDelegate(cocos2d::CCTextFieldDelegate*);
    void setPlaceHolder(char const*);
    void setString(char const*);
    TodoReturn textFieldWithPlaceHolder(char const*, char const*, float);
    TodoReturn textFieldWithPlaceHolder(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);

}

[[link(android)]]
class cocos2d::CCTextureAtlas {
    ~CCTextureAtlas();
 
    cocos2d::CCTextureAtlas* create(char const*, unsigned int);
    cocos2d::CCTextureAtlas* create(cocos2d::CCTexture2D*, unsigned int);
 
    TodoReturn CCTextureAtlas();
    TodoReturn description();
    TodoReturn drawNumberOfQuads(unsigned int);
    TodoReturn drawNumberOfQuads(unsigned int, unsigned int);
    TodoReturn drawQuads();
    TodoReturn fillWithEmptyQuadsFromIndex(unsigned int, unsigned int);
    TodoReturn getCapacity();
    TodoReturn getQuads();
    TodoReturn getTexture();
    TodoReturn getTotalQuads();
    TodoReturn increaseTotalQuadsWith(unsigned int);
    TodoReturn initWithFile(char const*, unsigned int);
    TodoReturn initWithTexture(cocos2d::CCTexture2D*, unsigned int);
    TodoReturn insertQuad(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int);
    TodoReturn insertQuadFromIndex(unsigned int, unsigned int);
    TodoReturn insertQuads(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int, unsigned int);
    TodoReturn listenBackToForeground(cocos2d::CCObject*);
    TodoReturn mapBuffers();
    TodoReturn moveQuadsFromIndex(unsigned int, unsigned int);
    TodoReturn moveQuadsFromIndex(unsigned int, unsigned int, unsigned int);
    TodoReturn removeAllQuads();
    TodoReturn removeQuadAtIndex(unsigned int);
    TodoReturn removeQuadsAtIndex(unsigned int, unsigned int);
    TodoReturn resizeCapacity(unsigned int);
    void setQuads(cocos2d::_ccV3F_C4B_T2F_Quad*);
    void setTexture(cocos2d::CCTexture2D*);
    TodoReturn setupIndices();
    TodoReturn setupVBO();
    TodoReturn textureAtlasWithFile(char const*, unsigned int);
    TodoReturn textureAtlasWithTexture(cocos2d::CCTexture2D*, unsigned int);
    TodoReturn updateQuad(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int);

}

[[link(android)]]
class cocos2d::CCTextureCache {
    ~CCTextureCache();
 
    TodoReturn CCTextureCache();
    TodoReturn addImage(char const*);
    TodoReturn addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn addImageAsyncCallBack(float);
    TodoReturn addPVRImage(char const*);
    TodoReturn addUIImage(cocos2d::CCImage*, char const*);
    TodoReturn description();
    TodoReturn dumpCachedTextureInfo();
    TodoReturn purgeSharedTextureCache();
    TodoReturn reloadAllTextures();
    TodoReturn removeAllTextures();
    TodoReturn removeTexture(cocos2d::CCTexture2D*);
    TodoReturn removeTextureForKey(char const*);
    TodoReturn removeUnusedTextures();
    TodoReturn sharedTextureCache();
    TodoReturn snapshotTextures();
    TodoReturn textureForKey(char const*);

}

[[link(android)]]
class cocos2d::CCTileMapAtlas {
    ~CCTileMapAtlas();
 
    cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int);
 
    TodoReturn CCTileMapAtlas();
    TodoReturn calculateItemsToRender();
    TodoReturn getTGAInfo();
    TodoReturn initWithTileFile(char const*, char const*, int, int);
    TodoReturn loadTGAfile(char const*);
    TodoReturn releaseMap();
    void setTGAInfo(cocos2d::sImageTGA*);
    void setTile(cocos2d::ccColor3B const&, cocos2d::_ccGridSize const&);
    TodoReturn tileAt(cocos2d::_ccGridSize const&);
    TodoReturn tileMapAtlasWithTileFile(char const*, char const*, int, int);
    TodoReturn updateAtlasValueAt(cocos2d::_ccGridSize const&, cocos2d::ccColor3B const&, unsigned int);
    TodoReturn updateAtlasValues();

}

[[link(android)]]
class cocos2d::CCTMXLayerInfo {
    ~CCTMXLayerInfo();
 
    TodoReturn CCTMXLayerInfo();
    TodoReturn getProperties();
    void setProperties(cocos2d::CCDictionary*);

}

[[link(android)]]
class cocos2d::CCTouchHandler {
    ~CCTouchHandler();
 
    TodoReturn CCTouchHandler();
    TodoReturn getDelegate();
    TodoReturn getEnabledSelectors();
    TodoReturn getPriority();
    TodoReturn handlerWithDelegate(cocos2d::CCTouchDelegate*, int);
    TodoReturn initWithDelegate(cocos2d::CCTouchDelegate*, int);
    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int);

}

[[link(android)]]
class cocos2d::CCTurnOffTiles {
    ~CCTurnOffTiles();
 
    cocos2d::CCTurnOffTiles* create(cocos2d::_ccGridSize const&, float);
    cocos2d::CCTurnOffTiles* create(int, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCTurnOffTiles();
    TodoReturn actionWithSeed(int, cocos2d::_ccGridSize const&, float);
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithSeed(int, cocos2d::_ccGridSize const&, float);
    TodoReturn shuffle(int*, unsigned int);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn turnOffTile(cocos2d::_ccGridSize const&);
    TodoReturn turnOnTile(cocos2d::_ccGridSize const&);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCWavesTiles3D {
    ~CCWavesTiles3D();
 
    cocos2d::CCWavesTiles3D* create(int, float, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCWavesTiles3D();
    TodoReturn actionWithWaves(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithWaves(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::_ccBezierConfig {
    ~_ccBezierConfig();
 
    TodoReturn _ccBezierConfig();

}

[[link(android)]]
class cocos2d::CCAccelerometer {
    ~CCAccelerometer();
 
    TodoReturn CCAccelerometer();
    void setDelegate(cocos2d::CCAccelerometerDelegate*);
    TodoReturn update(float, float, float, long);

}

[[link(android)]]
class cocos2d::CCActionInstant {
    ~CCActionInstant();
 
    TodoReturn CCActionInstant();
    TodoReturn copyWithZone(cocos2d::CCZone*);
    bool isDone();
    TodoReturn reverse();
    TodoReturn step(float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCActionManager {
    ~CCActionManager();
 
    TodoReturn CCActionManager();
    TodoReturn actionAllocWithHashElement(cocos2d::_hashElement*);
    TodoReturn addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool);
    TodoReturn deleteHashElement(cocos2d::_hashElement*);
    TodoReturn getActionByTag(unsigned int, cocos2d::CCObject*);
    TodoReturn numberOfRunningActionsInTarget(cocos2d::CCObject*);
    TodoReturn pauseAllRunningActions();
    TodoReturn pauseTarget(cocos2d::CCObject*);
    TodoReturn removeAction(cocos2d::CCAction*);
    TodoReturn removeActionAtIndex(unsigned int, cocos2d::_hashElement*);
    TodoReturn removeActionByTag(unsigned int, cocos2d::CCObject*);
    TodoReturn removeAllActions();
    TodoReturn removeAllActionsFromTarget(cocos2d::CCObject*);
    TodoReturn resumeTarget(cocos2d::CCObject*);
    TodoReturn resumeTargets(cocos2d::CCSet*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCBlendProtocol {
    TodoReturn CCBlendProtocol();

}

[[link(android)]]
class cocos2d::CCConfiguration {
    ~CCConfiguration();
 
    TodoReturn CCConfiguration();
    TodoReturn checkForGLExtension(gd::string const&);
    TodoReturn getMaxTextureSize();
    bool init();
    TodoReturn purgeConfiguration();
    TodoReturn sharedConfiguration();
    TodoReturn supportsBGRA8888();
    TodoReturn supportsNPOT();
    TodoReturn supportsPVRTC();

}

[[link(android)]]
class cocos2d::CCEaseBackInOut {
    ~CCEaseBackInOut();
 
    cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseBackInOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseBounceOut {
    ~CCEaseBounceOut();
 
    cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseBounceOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseElasticIn {
    ~CCEaseElasticIn();
 
    cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseElasticIn();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseSineInOut {
    ~CCEaseSineInOut();
 
    cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseSineInOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCIMEDispatcher {
    ~CCIMEDispatcher();
 
    TodoReturn CCIMEDispatcher();
    TodoReturn addDelegate(cocos2d::CCIMEDelegate*);
    TodoReturn attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    TodoReturn detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    TodoReturn dispatchDeleteBackward();
    TodoReturn dispatchInsertText(char const*, int);
    TodoReturn dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    TodoReturn dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    TodoReturn dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    TodoReturn dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    TodoReturn getContentText();
    TodoReturn removeDelegate(cocos2d::CCIMEDelegate*);
    TodoReturn sharedDispatcher();

}

[[link(android)]]
class cocos2d::CCIMEDispatcher::Impl {
    ~Impl();
 
    TodoReturn Impl();
    TodoReturn findDelegate(cocos2d::CCIMEDelegate*);
    bool init();

}

[[link(android)]]
class cocos2d::CCKeypadHandler {
    ~CCKeypadHandler();
 
    TodoReturn CCKeypadHandler();
    TodoReturn getDelegate();
    TodoReturn handlerWithDelegate(cocos2d::CCKeypadDelegate*);
    TodoReturn initWithDelegate(cocos2d::CCKeypadDelegate*);
    void setDelegate(cocos2d::CCKeypadDelegate*);

}

[[link(android)]]
class cocos2d::CCLabelProtocol {
    TodoReturn CCLabelProtocol();

}

[[link(android)]]
class cocos2d::CCLayerGradient {
    ~CCLayerGradient();
 
    cocos2d::CCLayerGradient* create();
    cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&);
    cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&);
 
    TodoReturn CCLayerGradient();
    TodoReturn getEndColor();
    TodoReturn getEndOpacity();
    TodoReturn getStartColor();
    TodoReturn getStartOpacity();
    TodoReturn getVector();
    TodoReturn initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&);
    TodoReturn initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&);
    bool isCompressedInterpolation();
    TodoReturn layerWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&);
    TodoReturn layerWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&);
    void setCompressedInterpolation(bool);
    void setEndColor(cocos2d::ccColor3B const&);
    void setEndOpacity(unsigned char);
    void setStartColor(cocos2d::ccColor3B const&);
    void setStartOpacity(unsigned char);
    void setVector(cocos2d::CCPoint const&);
    TodoReturn updateColor();

}

[[link(android)]]
class cocos2d::CCMenuItemImage {
    ~CCMenuItemImage();
 
    cocos2d::CCMenuItemImage* create();
    cocos2d::CCMenuItemImage* create(char const*, char const*);
    cocos2d::CCMenuItemImage* create(char const*, char const*, char const*);
    cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn CCMenuItemImage();
    bool init();
    TodoReturn initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn itemWithNormalImage(char const*, char const*);
    TodoReturn itemWithNormalImage(char const*, char const*, char const*);
    TodoReturn itemWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn itemWithNormalImage(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn node();
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*);
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame*);
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*);

}

[[link(android)]]
class cocos2d::CCMenuItemLabel {
    ~CCMenuItemLabel();
 
    cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*);
    cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn CCMenuItemLabel();
    TodoReturn activate();
    TodoReturn getColor();
    TodoReturn getDisabledColor();
    TodoReturn getLabel();
    TodoReturn getOpacity();
    TodoReturn initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    bool isOpacityModifyRGB();
    TodoReturn itemWithLabel(cocos2d::CCNode*);
    TodoReturn itemWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn selected();
    void setColor(cocos2d::ccColor3B const&);
    void setDisabledColor(cocos2d::ccColor3B const&);
    void setEnabled(bool);
    void setLabel(cocos2d::CCNode*);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setString(char const*);
    TodoReturn unselected();

}

[[link(android)]]
class cocos2d::CCParticleSmoke {
    ~CCParticleSmoke();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCProgressTimer {
    ~CCProgressTimer();
 
    cocos2d::CCProgressTimer* create(cocos2d::CCSprite*);
 
    TodoReturn CCProgressTimer();
    TodoReturn boundaryTexCoord(char);
    TodoReturn draw();
    TodoReturn getBarChangeRate();
    TodoReturn getColor();
    TodoReturn getMidpoint();
    TodoReturn getOpacity();
    TodoReturn getPercentage();
    TodoReturn getSprite();
    TodoReturn initWithSprite(cocos2d::CCSprite*);
    bool isOpacityModifyRGB();
    TodoReturn progressWithSprite(cocos2d::CCSprite*);
    void setAnchorPoint(cocos2d::CCPoint);
    void setBarChangeRate(cocos2d::CCPoint);
    void setColor(cocos2d::ccColor3B const&);
    void setMidpoint(cocos2d::CCPoint);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setPercentage(float);
    void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*);
    void setType(cocos2d::CCProgressTimerType);
    TodoReturn textureCoordFromAlphaPoint(cocos2d::CCPoint);
    TodoReturn updateBar();
    TodoReturn updateColor();
    TodoReturn updateProgress();
    TodoReturn updateRadial();
    TodoReturn vertexFromAlphaPoint(cocos2d::CCPoint);

}

[[link(android)]]
class cocos2d::CCRenderTexture {
    ~CCRenderTexture();
 
    cocos2d::CCRenderTexture* create(int, int);
    cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat);
    cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);
 
    TodoReturn CCRenderTexture();
    TodoReturn begin();
    TodoReturn beginWithClear(float, float, float, float);
    TodoReturn beginWithClear(float, float, float, float, float);
    TodoReturn beginWithClear(float, float, float, float, float, int);
    TodoReturn clear(float, float, float, float);
    TodoReturn clearDepth(float);
    TodoReturn clearStencil(int);
    TodoReturn end();
    TodoReturn getSprite();
    TodoReturn initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
    TodoReturn initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);
    TodoReturn listenToBackground(cocos2d::CCObject*);
    TodoReturn newCCImage();
    TodoReturn renderTextureWithWidthAndHeight(int, int);
    TodoReturn renderTextureWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
    TodoReturn renderTextureWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);
    TodoReturn saveToFile(char const*);
    TodoReturn saveToFile(char const*, cocos2d::eImageFormat);
    void setSprite(cocos2d::CCSprite*);

}

[[link(android)]]
class cocos2d::CCRepeatForever {
    ~CCRepeatForever();
 
    cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCRepeatForever();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithAction(cocos2d::CCActionInterval*);
    bool isDone();
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn step(float);

}

[[link(android)]]
class cocos2d::CCSceneDelegate {
    TodoReturn CCSceneDelegate();
    TodoReturn willSwitchToScene(cocos2d::CCScene*);

}

[[link(android)]]
class cocos2d::CCTouchDelegate {
    ~CCTouchDelegate();
 
    TodoReturn CCTouchDelegate();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);

}

[[link(android)]]
class cocos2d::VolatileTexture {
    ~VolatileTexture();
 
    TodoReturn VolatileTexture(cocos2d::CCTexture2D*);
    TodoReturn addCCImage(cocos2d::CCTexture2D*, cocos2d::CCImage*);
    TodoReturn addDataTexture(cocos2d::CCTexture2D*, void*, cocos2d::CCTexture2DPixelFormat, cocos2d::CCSize const&);
    TodoReturn addImageTexture(cocos2d::CCTexture2D*, char const*, cocos2d::CCImage::EImageFormat);
    TodoReturn addStringTexture(cocos2d::CCTexture2D*, char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment, char const*, float);
    TodoReturn findVolotileTexture(cocos2d::CCTexture2D*);
    TodoReturn reloadAllTextures();
    TodoReturn removeTexture(cocos2d::CCTexture2D*);
    void setTexParameters(cocos2d::CCTexture2D*, cocos2d::_ccTexParams*);

}

[[link(android)]]
class cocos2d::CCAccelAmplitude {
    ~CCAccelAmplitude();
 
    cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);
 
    TodoReturn CCAccelAmplitude();
    TodoReturn actionWithAction(cocos2d::CCAction*, float);
    TodoReturn initWithAction(cocos2d::CCAction*, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCActionInterval {
    ~CCActionInterval();
 
    cocos2d::CCActionInterval* create(float);
 
    TodoReturn CCActionInterval();
    TodoReturn actionWithDuration(float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn getAmplitudeRate();
    TodoReturn getElapsed();
    TodoReturn initWithDuration(float);
    bool isDone();
    TodoReturn reverse();
    void setAmplitudeRate(float);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn step(float);

}

[[link(android)]]
class cocos2d::CCAnimationCache {
    ~CCAnimationCache();
 
    TodoReturn CCAnimationCache();
    TodoReturn addAnimation(cocos2d::CCAnimation*, char const*);
    TodoReturn addAnimationsWithDictionary(cocos2d::CCDictionary*);
    TodoReturn addAnimationsWithFile(char const*);
    TodoReturn animationByName(char const*);
    bool init();
    TodoReturn parseVersion1(cocos2d::CCDictionary*);
    TodoReturn parseVersion2(cocos2d::CCDictionary*);
    TodoReturn purgeSharedAnimationCache();
    TodoReturn removeAnimationByName(char const*);
    TodoReturn sharedAnimationCache();

}

[[link(android)]]
class cocos2d::CCAnimationFrame {
    ~CCAnimationFrame();
 
    TodoReturn CCAnimationFrame();
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn getDelayUnits();
    TodoReturn getSpriteFrame();
    TodoReturn getUserInfo();
    TodoReturn initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*);
    void setDelayUnits(float);
    void setSpriteFrame(cocos2d::CCSpriteFrame*);
    void setUserInfo(cocos2d::CCDictionary*);

}

[[link(android)]]
class cocos2d::CCEaseElasticOut {
    ~CCEaseElasticOut();
 
    cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseElasticOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseRateAction {
    ~CCEaseRateAction();
 
    cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseRateAction();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn reverse();

}

[[link(android)]]
class cocos2d::CCFadeOutBLTiles {
    ~CCFadeOutBLTiles();
 
    cocos2d::CCFadeOutBLTiles* create(cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCFadeOutBLTiles();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn testFunc(cocos2d::_ccGridSize const&, float);

}

[[link(android)]]
class cocos2d::CCFadeOutTRTiles {
    ~CCFadeOutTRTiles();
 
    cocos2d::CCFadeOutTRTiles* create(cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCFadeOutTRTiles();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn testFunc(cocos2d::_ccGridSize const&, float);
    TodoReturn transformTile(cocos2d::_ccGridSize const&, float);
    TodoReturn turnOffTile(cocos2d::_ccGridSize const&);
    TodoReturn turnOnTile(cocos2d::_ccGridSize const&);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFadeOutUpTiles {
    ~CCFadeOutUpTiles();
 
    cocos2d::CCFadeOutUpTiles* create(cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCFadeOutUpTiles();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn testFunc(cocos2d::_ccGridSize const&, float);
    TodoReturn transformTile(cocos2d::_ccGridSize const&, float);

}

[[link(android)]]
class cocos2d::CCKeypadDelegate {
    TodoReturn CCKeypadDelegate();
    TodoReturn keyBackClicked();
    TodoReturn keyMenuClicked();

}

[[link(android)]]
class cocos2d::CCLayerMultiplex {
    ~CCLayerMultiplex();
 
    // cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*, ...);
 
    TodoReturn CCLayerMultiplex();
    TodoReturn addLayer(cocos2d::CCLayer*);
    TodoReturn createWithLayer(cocos2d::CCLayer*);
    TodoReturn initWithLayers(cocos2d::CCLayer*, std::__va_list);
    TodoReturn layerWithLayer(cocos2d::CCLayer*);
    // TodoReturn layerWithLayers(cocos2d::CCLayer*, ...);
    TodoReturn switchTo(unsigned int);
    TodoReturn switchToAndReleaseMe(unsigned int);

}

[[link(android)]]
class cocos2d::CCMenuItemSprite {
    ~CCMenuItemSprite();
 
    cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*);
    cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn CCMenuItemSprite();
    TodoReturn getColor();
    TodoReturn getDisabledImage();
    TodoReturn getNormalImage();
    TodoReturn getOpacity();
    TodoReturn getSelectedImage();
    TodoReturn initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    bool isOpacityModifyRGB();
    TodoReturn itemWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*);
    TodoReturn itemWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn itemWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn selected();
    void setColor(cocos2d::ccColor3B const&);
    void setDisabledImage(cocos2d::CCNode*);
    void setEnabled(bool);
    void setNormalImage(cocos2d::CCNode*);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setSelectedImage(cocos2d::CCNode*);
    TodoReturn unselected();
    TodoReturn updateImagesVisibility();

}

[[link(android)]]
class cocos2d::CCMenuItemToggle {
    ~CCMenuItemToggle();
 
    cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*);
    // cocos2d::CCMenuItemToggle* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, cocos2d::CCMenuItem*, ...);
 
    TodoReturn CCMenuItemToggle();
    TodoReturn activate();
    TodoReturn addSubItem(cocos2d::CCMenuItem*);
    TodoReturn getColor();
    TodoReturn getOpacity();
    TodoReturn getSelectedIndex();
    TodoReturn getSubItems();
    TodoReturn initWithItem(cocos2d::CCMenuItem*);
    TodoReturn initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, cocos2d::CCMenuItem*, std::__va_list);
    bool isOpacityModifyRGB();
    TodoReturn itemWithItem(cocos2d::CCMenuItem*);
    // TodoReturn itemWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, cocos2d::CCMenuItem*, ...);
    TodoReturn selected();
    TodoReturn selectedItem();
    void setColor(cocos2d::ccColor3B const&);
    void setEnabled(bool);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setSelectedIndex(unsigned int);
    void setSubItems(cocos2d::CCArray*);
    TodoReturn unselected();

}

[[link(android)]]
class cocos2d::CCParticleFlower {
    ~CCParticleFlower();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCParticleGalaxy {
    ~CCParticleGalaxy();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCParticleMeteor {
    ~CCParticleMeteor();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCParticleSpiral {
    ~CCParticleSpiral();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCParticleSystem {
    ~CCParticleSystem();
 
    cocos2d::CCParticleSystem* create(char const*);
 
    TodoReturn CCParticleSystem();
    TodoReturn addParticle();
    TodoReturn getAngle();
    TodoReturn getAngleVar();
    TodoReturn getAtlasIndex();
    TodoReturn getBatchNode();
    TodoReturn getBlendFunc();
    TodoReturn getDuration();
    TodoReturn getEmissionRate();
    TodoReturn getEmitterMode();
    TodoReturn getEndColor();
    TodoReturn getEndColorVar();
    TodoReturn getEndRadius();
    TodoReturn getEndRadiusVar();
    TodoReturn getEndSize();
    TodoReturn getEndSizeVar();
    TodoReturn getEndSpin();
    TodoReturn getEndSpinVar();
    TodoReturn getGravity();
    TodoReturn getLife();
    TodoReturn getLifeVar();
    TodoReturn getOpacityModifyRGB();
    TodoReturn getParticleCount();
    TodoReturn getPosVar();
    TodoReturn getPositionType();
    TodoReturn getRadialAccel();
    TodoReturn getRadialAccelVar();
    TodoReturn getRotatePerSecond();
    TodoReturn getRotatePerSecondVar();
    TodoReturn getSourcePosition();
    TodoReturn getSpeed();
    TodoReturn getSpeedVar();
    TodoReturn getStartColor();
    TodoReturn getStartColorVar();
    TodoReturn getStartRadius();
    TodoReturn getStartRadiusVar();
    TodoReturn getStartSize();
    TodoReturn getStartSizeVar();
    TodoReturn getStartSpin();
    TodoReturn getStartSpinVar();
    TodoReturn getTangentialAccel();
    TodoReturn getTangentialAccelVar();
    TodoReturn getTexture();
    TodoReturn getTotalParticles();
    bool init();
    TodoReturn initParticle(cocos2d::sCCParticle*);
    TodoReturn initWithDictionary(cocos2d::CCDictionary*);
    TodoReturn initWithFile(char const*);
    TodoReturn initWithTotalParticles(unsigned int);
    bool isActive();
    bool isAutoRemoveOnFinish();
    bool isBlendAdditive();
    bool isFull();
    TodoReturn particleWithFile(char const*);
    TodoReturn postStep();
    TodoReturn resetSystem();
    TodoReturn resumeSystem();
    void setAngle(float);
    void setAngleVar(float);
    void setAtlasIndex(unsigned int);
    void setAutoRemoveOnFinish(bool);
    void setBatchNode(cocos2d::CCParticleBatchNode*);
    void setBlendAdditive(bool);
    void setBlendFunc(cocos2d::_ccBlendFunc);
    void setDuration(float);
    void setEmissionRate(float);
    void setEmitterMode(int);
    void setEndColor(cocos2d::ccColor4F const&);
    void setEndColorVar(cocos2d::ccColor4F const&);
    void setEndRadius(float);
    void setEndRadiusVar(float);
    void setEndSize(float);
    void setEndSizeVar(float);
    void setEndSpin(float);
    void setEndSpinVar(float);
    void setGravity(cocos2d::CCPoint const&);
    void setLife(float);
    void setLifeVar(float);
    void setOpacityModifyRGB(bool);
    void setPosVar(cocos2d::CCPoint const&);
    void setPositionType(cocos2d::tCCPositionType);
    void setRadialAccel(float);
    void setRadialAccelVar(float);
    void setRotatePerSecond(float);
    void setRotatePerSecondVar(float);
    void setRotation(float);
    void setScale(float);
    void setScaleX(float);
    void setScaleY(float);
    void setSourcePosition(cocos2d::CCPoint const&);
    void setSpeed(float);
    void setSpeedVar(float);
    void setStartColor(cocos2d::ccColor4F const&);
    void setStartColorVar(cocos2d::ccColor4F const&);
    void setStartRadius(float);
    void setStartRadiusVar(float);
    void setStartSize(float);
    void setStartSizeVar(float);
    void setStartSpin(float);
    void setStartSpinVar(float);
    void setTangentialAccel(float);
    void setTangentialAccelVar(float);
    void setTexture(cocos2d::CCTexture2D*);
    void setTotalParticles(unsigned int);
    TodoReturn stopSystem();
    TodoReturn update(float);
    TodoReturn updateBlendFunc();
    TodoReturn updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
    TodoReturn updateWithNoTime();

}

[[link(android)]]
class cocos2d::CCProfilingTimer {
    ~CCProfilingTimer();
 
    TodoReturn CCProfilingTimer();
    TodoReturn description();
    TodoReturn initWithName(char const*);
    TodoReturn reset();

}

[[link(android)]]
class cocos2d::CCProgressFromTo {
    ~CCProgressFromTo();
 
    cocos2d::CCProgressFromTo* create(float, float, float);
 
    TodoReturn CCProgressFromTo();
    TodoReturn actionWithDuration(float, float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, float, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTargetedAction {
    ~CCTargetedAction();
 
    cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);
 
    TodoReturn CCTargetedAction();
    TodoReturn actionWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn getForcedTarget();
    TodoReturn initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);
    void setForcedTarget(cocos2d::CCNode*);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTMXObjectGroup {
    ~CCTMXObjectGroup();
 
    TodoReturn CCTMXObjectGroup();
    TodoReturn getGroupName();
    TodoReturn getObjects();
    TodoReturn getPositionOffset();
    TodoReturn getProperties();
    TodoReturn objectNamed(char const*);
    TodoReturn propertyNamed(char const*);
    void setGroupName(char const*);
    void setObjects(cocos2d::CCArray*);
    void setPositionOffset(cocos2d::CCPoint const&);
    void setProperties(cocos2d::CCDictionary*);

}

[[link(android)]]
class cocos2d::CCTMXTilesetInfo {
    ~CCTMXTilesetInfo();
 
    TodoReturn CCTMXTilesetInfo();
    TodoReturn rectForGID(unsigned int);

}

[[link(android)]]
class cocos2d::CCTransitionFade {
    ~CCTransitionFade();
 
    cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&);
 
    TodoReturn CCTransitionFade();
    TodoReturn initWithDuration(float, cocos2d::CCScene*);
    TodoReturn initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&);
    TodoReturn onEnter();
    TodoReturn onExit();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&);

}

[[link(android)]]
class cocos2d::EGLTouchDelegate {
    ~EGLTouchDelegate();
 
    TodoReturn EGLTouchDelegate();

}

[[link(android)]]
class cocos2d::CCAutoreleasePool {
    ~CCAutoreleasePool();
 
    TodoReturn CCAutoreleasePool();
    TodoReturn addObject(cocos2d::CCObject*);
    TodoReturn clear();
    TodoReturn removeObject(cocos2d::CCObject*);

}

[[link(android)]]
class cocos2d::CCDeccelAmplitude {
    ~CCDeccelAmplitude();
 
    cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);
 
    TodoReturn CCDeccelAmplitude();
    TodoReturn actionWithAction(cocos2d::CCAction*, float);
    TodoReturn initWithAction(cocos2d::CCAction*, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseBounceInOut {
    ~CCEaseBounceInOut();
 
    cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseBounceInOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEGLViewProtocol {
    ~CCEGLViewProtocol();
 
    TodoReturn CCEGLViewProtocol();
    TodoReturn canSetContentScaleFactor();
    TodoReturn getFrameSize();
    TodoReturn getMainScreenScale();
    TodoReturn getScreenBottom();
    TodoReturn getScreenLeft();
    TodoReturn getScreenRight();
    TodoReturn getScreenScaleFactor();
    TodoReturn getScreenScaleFactorH();
    TodoReturn getScreenScaleFactorMax();
    TodoReturn getScreenScaleFactorW();
    TodoReturn getScreenTop();
    TodoReturn getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*);
    TodoReturn getSize();
    TodoReturn getViewName();
    TodoReturn getViewPort();
    TodoReturn handleTouchesBegin(int, int*, float*, float*);
    TodoReturn handleTouchesCancel(int, int*, float*, float*);
    TodoReturn handleTouchesEnd(int, int*, float*, float*);
    TodoReturn handleTouchesMove(int, int*, float*, float*);
    void setContentScaleFactor(float);
    void setDesignResolutionSize(float, float);
    void setFrameSize(float, float);
    void setScissorInPoints(float, float, float, float);
    void setTouchDelegate(cocos2d::EGLTouchDelegate*);
    void setViewName(char const*);
    void setViewPortInPoints(float, float, float, float);

}

[[link(android)]]
class cocos2d::CCSpriteBatchNode {
    ~CCSpriteBatchNode();
 
    cocos2d::CCSpriteBatchNode* create(char const*, unsigned int);
    cocos2d::CCSpriteBatchNode* create(cocos2d::CCTexture2D*, unsigned int);
 
    TodoReturn CCSpriteBatchNode();
    TodoReturn addChild(cocos2d::CCNode*);
    TodoReturn addChild(cocos2d::CCNode*, int);
    TodoReturn addChild(cocos2d::CCNode*, int, int);
    TodoReturn addQuadFromSprite(cocos2d::CCSprite*, unsigned int);
    TodoReturn addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
    TodoReturn appendChild(cocos2d::CCSprite*);
    TodoReturn atlasIndexForChild(cocos2d::CCSprite*, int);
    TodoReturn batchNodeWithFile(char const*, unsigned int);
    TodoReturn batchNodeWithTexture(cocos2d::CCTexture2D*, unsigned int);
    TodoReturn draw();
    TodoReturn getBlendFunc();
    TodoReturn getTexture();
    TodoReturn getTextureAtlas();
    TodoReturn highestAtlasIndexInChild(cocos2d::CCSprite*);
    TodoReturn increaseAtlasCapacity();
    bool init();
    TodoReturn initWithFile(char const*, unsigned int);
    TodoReturn initWithTexture(cocos2d::CCTexture2D*, unsigned int);
    TodoReturn insertChild(cocos2d::CCSprite*, unsigned int);
    TodoReturn lowestAtlasIndexInChild(cocos2d::CCSprite*);
    TodoReturn rebuildIndexInOrder(cocos2d::CCSprite*, unsigned int);
    TodoReturn removeAllChildrenWithCleanup(bool);
    TodoReturn removeChild(cocos2d::CCNode*, bool);
    TodoReturn removeChildAtIndex(unsigned int, bool);
    TodoReturn removeSpriteFromAtlas(cocos2d::CCSprite*);
    TodoReturn reorderBatch(bool);
    TodoReturn reorderChild(cocos2d::CCNode*, int);
    void setBlendFunc(cocos2d::_ccBlendFunc);
    void setTexture(cocos2d::CCTexture2D*);
    TodoReturn sortAllChildren();
    TodoReturn swap(int, int);
    TodoReturn updateAtlasIndex(cocos2d::CCSprite*, int*);
    TodoReturn updateBlendFunc();
    TodoReturn visit();

}

[[link(android)]]
class cocos2d::CCTextureProtocol {
    TodoReturn CCTextureProtocol();

}

[[link(android)]]
class cocos2d::CCTouchDispatcher {
    ~CCTouchDispatcher();
 
    TodoReturn CCTouchDispatcher();
    TodoReturn addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    TodoReturn addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
    TodoReturn findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    TodoReturn findHandler(cocos2d::CCTouchDelegate*);
    TodoReturn forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    TodoReturn forceRemoveAllDelegates();
    TodoReturn forceRemoveDelegate(cocos2d::CCTouchDelegate*);
    TodoReturn getForcePrio();
    TodoReturn getTargetPrio();
    bool init();
    bool isDispatchEvents();
    TodoReturn rearrangeHandlers(cocos2d::CCArray*);
    TodoReturn removeAllDelegates();
    TodoReturn removeDelegate(cocos2d::CCTouchDelegate*);
    void setDispatchEvents(bool);
    void setForcePrio(bool);
    void setPriority(int, cocos2d::CCTouchDelegate*);
    void setTargetPrio(int);
    TodoReturn touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);
    TodoReturn touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);

}

[[link(android)]]
class cocos2d::CCTransitionFlipX {
    ~CCTransitionFlipX();
 
    cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
 
    TodoReturn CCTransitionFlipX();
    TodoReturn onEnter();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);

}

[[link(android)]]
class cocos2d::CCTransitionFlipY {
    ~CCTransitionFlipY();
 
    cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
 
    TodoReturn CCTransitionFlipY();
    TodoReturn onEnter();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);

}

[[link(android)]]
class cocos2d::CCTransitionScene {
    ~CCTransitionScene();
 
    cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);
 
    TodoReturn CCTransitionScene();
    TodoReturn cleanup();
    TodoReturn draw();
    TodoReturn finish();
    TodoReturn hideOutShowIn();
    TodoReturn initWithDuration(float, cocos2d::CCScene*);
    TodoReturn onEnter();
    TodoReturn onExit();
    TodoReturn sceneOrder();
    void setNewScene(float);
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*);

}

[[link(android)]]
class cocos2d::CCCardinalSplineBy {
    ~CCCardinalSplineBy();
 
    cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float);
 
    TodoReturn CCCardinalSplineBy();
    TodoReturn actionWithDuration(float, cocos2d::CCPointArray*, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn updatePosition(cocos2d::CCPoint&);

}

[[link(android)]]
class cocos2d::CCCardinalSplineTo {
    ~CCCardinalSplineTo();
 
    cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float);
 
    TodoReturn CCCardinalSplineTo();
    TodoReturn actionWithDuration(float, cocos2d::CCPointArray*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, cocos2d::CCPointArray*, float);
    TodoReturn reverse();
    void setPoints(cocos2d::CCPointArray*);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);
    TodoReturn updatePosition(cocos2d::CCPoint&);

}

[[link(android)]]
class cocos2d::CCEaseElasticInOut {
    ~CCEaseElasticInOut();
 
    cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseElasticInOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFadeOutDownTiles {
    ~CCFadeOutDownTiles();
 
    cocos2d::CCFadeOutDownTiles* create(cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCFadeOutDownTiles();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn testFunc(cocos2d::_ccGridSize const&, float);

}

[[link(android)]]
class cocos2d::CCFiniteTimeAction {
    ~CCFiniteTimeAction();
 
    TodoReturn CCFiniteTimeAction();
    TodoReturn getDuration();
    TodoReturn reverse();

}

[[link(android)]]
class cocos2d::CCKeypadDispatcher {
    ~CCKeypadDispatcher();
 
    TodoReturn CCKeypadDispatcher();
    TodoReturn addDelegate(cocos2d::CCKeypadDelegate*);
    TodoReturn dispatchKeypadMSG(cocos2d::ccKeypadMSGType);
    TodoReturn forceAddDelegate(cocos2d::CCKeypadDelegate*);
    TodoReturn forceRemoveDelegate(cocos2d::CCKeypadDelegate*);
    TodoReturn removeDelegate(cocos2d::CCKeypadDelegate*);

}

[[link(android)]]
class cocos2d::CCShatteredTiles3D {
    ~CCShatteredTiles3D();
 
    cocos2d::CCShatteredTiles3D* create(int, bool, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCShatteredTiles3D();
    TodoReturn actionWithRange(int, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithRange(int, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSpriteFrameCache {
    ~CCSpriteFrameCache();
 
    TodoReturn sharedSpriteFrameCache();
 
    TodoReturn CCSpriteFrameCache();
    TodoReturn addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
    TodoReturn addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
    TodoReturn addSpriteFramesWithFile(char const*);
    TodoReturn addSpriteFramesWithFile(char const*, char const*);
    TodoReturn addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
    bool init();
    TodoReturn purgeSharedSpriteFrameCache();
    TodoReturn removeSpriteFrameByName(char const*);
    TodoReturn removeSpriteFrames();
    TodoReturn removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
    TodoReturn removeSpriteFramesFromFile(char const*);
    TodoReturn removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
    TodoReturn removeUnusedSpriteFrames();
    TodoReturn spriteFrameByName(char const*);

}

[[link(android)]]
class cocos2d::CCToggleVisibility {
    ~CCToggleVisibility();
 
    cocos2d::CCToggleVisibility* create();
 
    TodoReturn CCToggleVisibility();
    TodoReturn action();
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTransitionFadeBL {
    ~CCTransitionFadeBL();
 
    TodoReturn CCTransitionFadeBL();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&);

}

[[link(android)]]
class cocos2d::CCTransitionFadeTR {
    ~CCTransitionFadeTR();
 
    TodoReturn CCTransitionFadeTR();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&);
    TodoReturn easeActionWithAction(cocos2d::CCActionInterval*);
    TodoReturn onEnter();
    TodoReturn sceneOrder();

}

[[link(android)]]
class cocos2d::CCTransitionFadeUp {
    ~CCTransitionFadeUp();
 
    TodoReturn CCTransitionFadeUp();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&);

}

[[link(android)]]
class cocos2d::CCEaseExponentialIn {
    ~CCEaseExponentialIn();
 
    cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseExponentialIn();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCMenuItemAtlasFont {
    ~CCMenuItemAtlasFont();
 
    cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char);
    cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
 
    TodoReturn CCMenuItemAtlasFont();
    TodoReturn initWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);
    TodoReturn itemWithString(char const*, char const*, int, int, char);
    TodoReturn itemWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_CallFuncO);

}

[[link(android)]]
class cocos2d::CCParticleBatchNode {
    ~CCParticleBatchNode();
 
    cocos2d::CCParticleBatchNode* create(char const*, unsigned int);
    cocos2d::CCParticleBatchNode* create(cocos2d::CCTexture2D*, unsigned int);
 
    TodoReturn CCParticleBatchNode();
    TodoReturn addChild(cocos2d::CCNode*);
    TodoReturn addChild(cocos2d::CCNode*, int);
    TodoReturn addChild(cocos2d::CCNode*, int, int);
    TodoReturn addChildHelper(cocos2d::CCParticleSystem*, int, int);
    TodoReturn batchNodeWithFile(char const*, unsigned int);
    TodoReturn batchNodeWithTexture(cocos2d::CCTexture2D*, unsigned int);
    TodoReturn disableParticle(unsigned int);
    TodoReturn draw();
    TodoReturn getBlendFunc();
    TodoReturn getCurrentIndex(unsigned int*, unsigned int*, cocos2d::CCNode*, int);
    TodoReturn getTexture();
    TodoReturn getTextureAtlas();
    TodoReturn increaseAtlasCapacityTo(unsigned int);
    TodoReturn initWithFile(char const*, unsigned int);
    TodoReturn initWithTexture(cocos2d::CCTexture2D*, unsigned int);
    TodoReturn insertChild(cocos2d::CCParticleSystem*, unsigned int);
    TodoReturn removeAllChildrenWithCleanup(bool);
    TodoReturn removeChild(cocos2d::CCNode*, bool);
    TodoReturn removeChildAtIndex(unsigned int, bool);
    TodoReturn reorderChild(cocos2d::CCNode*, int);
    TodoReturn searchNewPositionInChildrenForZ(int);
    void setBlendFunc(cocos2d::_ccBlendFunc);
    void setTexture(cocos2d::CCTexture2D*);
    void setTextureAtlas(cocos2d::CCTextureAtlas*);
    TodoReturn updateAllAtlasIndexes();
    TodoReturn updateBlendFunc();
    TodoReturn visit();

}

[[link(android)]]
class cocos2d::CCParticleExplosion {
    ~CCParticleExplosion();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCParticleFireworks {
    ~CCParticleFireworks();
 
    TodoReturn initWithTotalParticles(unsigned int);

}

[[link(android)]]
class cocos2d::CCTextFieldDelegate {
    TodoReturn CCTextFieldDelegate();
    TodoReturn onDraw(cocos2d::CCTextFieldTTF*);
    TodoReturn onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
    TodoReturn onTextFieldDeleteBackward(cocos2d::CCTextFieldTTF*, char const*, int);
    TodoReturn onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
    TodoReturn onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int);
    TodoReturn textChanged();

}

[[link(android)]]
class cocos2d::CCTiledGrid3DAction {
    ~CCTiledGrid3DAction();
 
    TodoReturn CCTiledGrid3DAction();
    TodoReturn getGrid();
    TodoReturn originalTile(cocos2d::_ccGridSize const&);
    void setTile(cocos2d::_ccGridSize const&, cocos2d::_ccQuad3 const&);
    TodoReturn tile(cocos2d::_ccGridSize const&);

}

[[link(android)]]
class cocos2d::CCTransitionMoveInB {
    ~CCTransitionMoveInB();
 
    TodoReturn CCTransitionMoveInB();
    TodoReturn initScenes();

}

[[link(android)]]
class cocos2d::CCTransitionMoveInL {
    ~CCTransitionMoveInL();
 
    TodoReturn CCTransitionMoveInL();
    TodoReturn action();
    TodoReturn easeActionWithAction(cocos2d::CCActionInterval*);
    TodoReturn initScenes();
    TodoReturn onEnter();

}

[[link(android)]]
class cocos2d::CCTransitionMoveInR {
    ~CCTransitionMoveInR();
 
    TodoReturn CCTransitionMoveInR();
    TodoReturn initScenes();

}

[[link(android)]]
class cocos2d::CCTransitionMoveInT {
    ~CCTransitionMoveInT();
 
    TodoReturn CCTransitionMoveInT();
    TodoReturn initScenes();

}

[[link(android)]]
class cocos2d::CCEaseExponentialOut {
    ~CCEaseExponentialOut();
 
    cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseExponentialOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCParticleSystemQuad {
    ~CCParticleSystemQuad();
 
    cocos2d::CCParticleSystemQuad* create();
    cocos2d::CCParticleSystemQuad* create(char const*);
 
    TodoReturn CCParticleSystemQuad();
    TodoReturn allocMemory();
    TodoReturn draw();
    TodoReturn initTexCoordsWithRect(cocos2d::CCRect const&);
    TodoReturn initWithTotalParticles(unsigned int);
    TodoReturn listenBackToForeground(cocos2d::CCObject*);
    TodoReturn node();
    TodoReturn particleWithFile(char const*);
    TodoReturn postStep();
    void setBatchNode(cocos2d::CCParticleBatchNode*);
    void setDisplayFrame(cocos2d::CCSpriteFrame*);
    void setTexture(cocos2d::CCTexture2D*);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    void setTotalParticles(unsigned int);
    TodoReturn setupIndices();
    TodoReturn setupVBO();
    TodoReturn updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);

}

[[link(android)]]
class cocos2d::CCTransitionFadeDown {
    ~CCTransitionFadeDown();
 
    TodoReturn CCTransitionFadeDown();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&);

}

[[link(android)]]
class cocos2d::CCTransitionJumpZoom {
    ~CCTransitionJumpZoom();
 
    TodoReturn CCTransitionJumpZoom();
    TodoReturn onEnter();

}

[[link(android)]]
class cocos2d::CCTransitionPageTurn {
    ~CCTransitionPageTurn();
 
    cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);
 
    TodoReturn CCTransitionPageTurn();
    TodoReturn actionWithSize(cocos2d::_ccGridSize const&);
    TodoReturn initWithDuration(float, cocos2d::CCScene*, bool);
    TodoReturn onEnter();
    TodoReturn sceneOrder();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, bool);

}

[[link(android)]]
class cocos2d::CCTransitionProgress {
    ~CCTransitionProgress();
 
    TodoReturn CCTransitionProgress();
    TodoReturn onEnter();
    TodoReturn onExit();
    TodoReturn progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
    TodoReturn sceneOrder();
    TodoReturn setupTransition();

}

[[link(android)]]
class cocos2d::CCTransitionRotoZoom {
    ~CCTransitionRotoZoom();
 
    TodoReturn CCTransitionRotoZoom();
    TodoReturn onEnter();

}

[[link(android)]]
class cocos2d::CCTransitionSlideInB {
    ~CCTransitionSlideInB();
 
    TodoReturn CCTransitionSlideInB();
    TodoReturn action();
    TodoReturn initScenes();
    TodoReturn sceneOrder();

}

[[link(android)]]
class cocos2d::CCTransitionSlideInL {
    ~CCTransitionSlideInL();
 
    TodoReturn CCTransitionSlideInL();
    TodoReturn action();
    TodoReturn easeActionWithAction(cocos2d::CCActionInterval*);
    TodoReturn initScenes();
    TodoReturn onEnter();
    TodoReturn sceneOrder();

}

[[link(android)]]
class cocos2d::CCTransitionSlideInR {
    ~CCTransitionSlideInR();
 
    TodoReturn CCTransitionSlideInR();
    TodoReturn action();
    TodoReturn initScenes();
    TodoReturn sceneOrder();

}

[[link(android)]]
class cocos2d::CCTransitionSlideInT {
    ~CCTransitionSlideInT();
 
    TodoReturn CCTransitionSlideInT();
    TodoReturn action();
    TodoReturn initScenes();
    TodoReturn sceneOrder();

}

[[link(android)]]
class cocos2d::CCActionTweenDelegate {
    ~CCActionTweenDelegate();
 
    TodoReturn CCActionTweenDelegate();

}

[[link(android)]]
class cocos2d::CCApplicationProtocol {
    ~CCApplicationProtocol();
 
    TodoReturn CCApplicationProtocol();
    bool isIpad();

}

[[link(android)]]
class cocos2d::CCBMFontConfiguration {
    ~CCBMFontConfiguration();
 
    cocos2d::CCBMFontConfiguration* create(char const*);
 
    TodoReturn CCBMFontConfiguration();
    TodoReturn configurationWithFNTFile(char const*);
    TodoReturn description();
    TodoReturn getAtlasName();
    TodoReturn initWithFNTfile(char const*);
    TodoReturn parseCharacterDefinition(gd::string, cocos2d::_BMFontDef*);
    TodoReturn parseCommonArguments(gd::string);
    TodoReturn parseConfigFile(char const*);
    TodoReturn parseImageFileName(gd::string, char const*);
    TodoReturn parseInfoArguments(gd::string);
    TodoReturn parseKerningEntry(gd::string);
    TodoReturn purgeFontDefDictionary();
    TodoReturn purgeKerningDictionary();

}

[[link(android)]]
class cocos2d::CCDisplayLinkDirector {
    ~CCDisplayLinkDirector();
 
    TodoReturn CCDisplayLinkDirector();
    TodoReturn mainLoop();
    void setAnimationInterval(double);
    TodoReturn startAnimation();
    TodoReturn stopAnimation();

}

[[link(android)]]
class cocos2d::CCScriptEngineManager {
    ~CCScriptEngineManager();
 
    TodoReturn CCScriptEngineManager();
    TodoReturn getScriptEngine();
    TodoReturn purgeSharedManager();
    TodoReturn removeScriptEngine();
    void setScriptEngine(cocos2d::CCScriptEngineProtocol*);
    TodoReturn sharedManager();

}

[[link(android)]]
class cocos2d::CCTransitionCrossFade {
    ~CCTransitionCrossFade();
 
    TodoReturn CCTransitionCrossFade();
    TodoReturn draw();
    TodoReturn onEnter();
    TodoReturn onExit();

}

[[link(android)]]
class cocos2d::CCTransitionEaseScene {
    TodoReturn CCTransitionEaseScene();

}

[[link(android)]]
class cocos2d::CCTransitionSplitCols {
    ~CCTransitionSplitCols();
 
    TodoReturn CCTransitionSplitCols();
    TodoReturn action();
    TodoReturn easeActionWithAction(cocos2d::CCActionInterval*);
    TodoReturn onEnter();

}

[[link(android)]]
class cocos2d::CCTransitionSplitRows {
    ~CCTransitionSplitRows();
 
    TodoReturn CCTransitionSplitRows();
    TodoReturn action();

}

[[link(android)]]
class cocos2d::CCTransitionZoomFlipX {
    ~CCTransitionZoomFlipX();
 
    cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
 
    TodoReturn CCTransitionZoomFlipX();
    TodoReturn onEnter();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);

}

[[link(android)]]
class cocos2d::CCTransitionZoomFlipY {
    ~CCTransitionZoomFlipY();
 
    cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
 
    TodoReturn CCTransitionZoomFlipY();
    TodoReturn onEnter();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);

}

[[link(android)]]
class cocos2d::CCAccelDeccelAmplitude {
    ~CCAccelDeccelAmplitude();
 
    cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);
 
    TodoReturn CCAccelDeccelAmplitude();
    TodoReturn actionWithAction(cocos2d::CCAction*, float);
    TodoReturn initWithAction(cocos2d::CCAction*, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEaseExponentialInOut {
    ~CCEaseExponentialInOut();
 
    cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval*);
 
    TodoReturn CCEaseExponentialInOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCStandardTouchHandler {
    ~CCStandardTouchHandler();
 
    TodoReturn CCStandardTouchHandler();
    TodoReturn handlerWithDelegate(cocos2d::CCTouchDelegate*, int);
    TodoReturn initWithDelegate(cocos2d::CCTouchDelegate*, int);

}

[[link(android)]]
class cocos2d::CCTargetedTouchHandler {
    ~CCTargetedTouchHandler();
 
    TodoReturn CCTargetedTouchHandler();
    TodoReturn getClaimedTouches();
    TodoReturn handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);
    TodoReturn initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);
    bool isSwallowsTouches();
    void setSwallowsTouches(bool);

}

[[link(android)]]
class cocos2d::CCTransitionShrinkGrow {
    ~CCTransitionShrinkGrow();
 
    TodoReturn CCTransitionShrinkGrow();
    TodoReturn easeActionWithAction(cocos2d::CCActionInterval*);
    TodoReturn onEnter();

}

[[link(android)]]
class cocos2d::CCAccelerometerDelegate {
    TodoReturn CCAccelerometerDelegate();
    TodoReturn didAccelerate(cocos2d::CCAcceleration*);

}

[[link(android)]]
class cocos2d::CCTransitionFlipAngular {
    ~CCTransitionFlipAngular();
 
    cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
 
    TodoReturn CCTransitionFlipAngular();
    TodoReturn onEnter();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);

}

[[link(android)]]
class cocos2d::CCTransitionTurnOffTiles {
    ~CCTransitionTurnOffTiles();
 
    TodoReturn CCTransitionTurnOffTiles();
    TodoReturn easeActionWithAction(cocos2d::CCActionInterval*);
    TodoReturn onEnter();
    TodoReturn sceneOrder();

}

[[link(android)]]
class cocos2d::CCTouchScriptHandlerEntry {
    ~CCTouchScriptHandlerEntry();
 
    TodoReturn CCTouchScriptHandlerEntry();
    TodoReturn entryWithHandler(int, bool, int, bool);
    TodoReturn getHandler();
    TodoReturn getPriority();
    TodoReturn getSwallowsTouches();
    TodoReturn initWithHandler(int, bool, int, bool);
    bool isMultiTouches();

}

[[link(android)]]
class cocos2d::CCTransitionProgressInOut {
    ~CCTransitionProgressInOut();
 
    TodoReturn progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
    TodoReturn sceneOrder();
    TodoReturn setupTransition();

}

[[link(android)]]
class cocos2d::CCTransitionProgressOutIn {
    ~CCTransitionProgressOutIn();
 
    TodoReturn progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);

}

[[link(android)]]
class cocos2d::CCTransitionSceneOriented {
    ~CCTransitionSceneOriented();
 
    cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
 
    TodoReturn CCTransitionSceneOriented();
    TodoReturn initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);

}

[[link(android)]]
class cocos2d::CCTransitionZoomFlipAngular {
    ~CCTransitionZoomFlipAngular();
 
    cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
 
    TodoReturn CCTransitionZoomFlipAngular();
    TodoReturn onEnter();
    TodoReturn transitionWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);

}

[[link(android)]]
class cocos2d::CCTransitionProgressRadialCW {
    ~CCTransitionProgressRadialCW();
 
    TodoReturn progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);

}

[[link(android)]]
class cocos2d::CCTransitionProgressVertical {
    ~CCTransitionProgressVertical();
 
    TodoReturn progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);

}

[[link(android)]]
class cocos2d::CCSchedulerScriptHandlerEntry {
    ~CCSchedulerScriptHandlerEntry();
 
    TodoReturn CCSchedulerScriptHandlerEntry();
    TodoReturn entryWithHandler(int, float, bool);
    TodoReturn getEntryID();
    TodoReturn getTimer();
    TodoReturn initWithHandler(int, float, bool);
    bool isMarkedForDeletion();
    bool isPaused();
    TodoReturn markedForDeletion();

}

[[link(android)]]
class cocos2d::CCTransitionProgressRadialCCW {
    ~CCTransitionProgressRadialCCW();
 
    TodoReturn progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);

}

[[link(android)]]
class cocos2d::CCTransitionProgressHorizontal {
    ~CCTransitionProgressHorizontal();
 
    TodoReturn progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);

}

[[link(android)]]
class cocos2d::Tile {
    ~Tile();
 
    TodoReturn Tile();

}

[[link(android)]]
class cocos2d::CCSet {
    ~CCSet();
 
    TodoReturn CCSet();
    TodoReturn CCSet(cocos2d::CCSet const&);
    TodoReturn addObject(cocos2d::CCObject*);
    TodoReturn anyObject();
    TodoReturn begin();
    TodoReturn containsObject(cocos2d::CCObject*);
    TodoReturn copy();
    TodoReturn count();
    TodoReturn end();
    TodoReturn mutableCopy();
    TodoReturn removeObject(cocos2d::CCObject*);

}

[[link(android)]]
class cocos2d::CCHide {
    ~CCHide();
 
    cocos2d::CCHide* create();
 
    TodoReturn CCHide();
    TodoReturn action();
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCMenu {
    ~CCMenu();
 
    cocos2d::CCMenu* create();
    cocos2d::CCMenu* create(cocos2d::CCArray*);
    // cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...);
 
    TodoReturn CCMenu();
    TodoReturn addChild(cocos2d::CCNode*);
    TodoReturn addChild(cocos2d::CCNode*, int);
    TodoReturn addChild(cocos2d::CCNode*, int, int);
    TodoReturn alignItemsHorizontally();
    TodoReturn alignItemsHorizontallyWithPadding(float);
    // TodoReturn alignItemsInColumns(unsigned int, ...);
    TodoReturn alignItemsInColumns(unsigned int, std::__va_list);
    // TodoReturn alignItemsInRows(unsigned int, ...);
    TodoReturn alignItemsInRows(unsigned int, std::__va_list);
    TodoReturn alignItemsVertically();
    TodoReturn alignItemsVerticallyWithPadding(float);
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn createWithItem(cocos2d::CCMenuItem*);
    TodoReturn getColor();
    TodoReturn getCustomTouchPrio();
    TodoReturn getOpacity();
    bool init();
    TodoReturn initWithArray(cocos2d::CCArray*);
    TodoReturn initWithItems(cocos2d::CCMenuItem*, std::__va_list);
    bool isEnabled();
    bool isOpacityModifyRGB();
    TodoReturn itemForTouch(cocos2d::CCTouch*);
    TodoReturn menuWithArray(cocos2d::CCArray*);
    TodoReturn menuWithItem(cocos2d::CCMenuItem*);
    // TodoReturn menuWithItems(cocos2d::CCMenuItem*, ...);
    TodoReturn node();
    TodoReturn onExit();
    TodoReturn registerWithTouchDispatcher();
    void setColor(cocos2d::ccColor3B const&);
    void setCustomTouchPrio(int);
    void setEnabled(bool);
    void setHandlerPriority(int);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);

}

[[link(android)]]
class cocos2d::CCNode {
    ~CCNode();
 
    cocos2d::CCNode* create();
 
    TodoReturn CCNode();
    TodoReturn _setZOrder(int);
    TodoReturn addChild(cocos2d::CCNode*);
    TodoReturn addChild(cocos2d::CCNode*, int);
    TodoReturn addChild(cocos2d::CCNode*, int, int);
    TodoReturn boundingBox();
    TodoReturn childrenAlloc();
    TodoReturn cleanup();
    TodoReturn convertToNodeSpace(cocos2d::CCPoint const&);
    TodoReturn convertToNodeSpaceAR(cocos2d::CCPoint const&);
    TodoReturn convertToWindowSpace(cocos2d::CCPoint const&);
    TodoReturn convertToWorldSpace(cocos2d::CCPoint const&);
    TodoReturn convertToWorldSpaceAR(cocos2d::CCPoint const&);
    TodoReturn convertTouchToNodeSpace(cocos2d::CCTouch*);
    TodoReturn convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
    TodoReturn description();
    TodoReturn detachChild(cocos2d::CCNode*, bool);
    TodoReturn draw();
    TodoReturn getActionByTag(int);
    TodoReturn getActionManager();
    TodoReturn getAnchorPoint();
    TodoReturn getAnchorPointInPoints();
    TodoReturn getCamera();
    TodoReturn getChildByTag(int);
    TodoReturn getChildren();
    TodoReturn getChildrenCount();
    TodoReturn getContentSize();
    TodoReturn getGLServerState();
    TodoReturn getGrid();
    TodoReturn getOrderOfArrival();
    TodoReturn getParent();
    TodoReturn getPosition();
    TodoReturn getPosition(float*, float*);
    TodoReturn getPositionLua();
    TodoReturn getPositionX();
    TodoReturn getPositionY();
    TodoReturn getRotation();
    TodoReturn getScale();
    TodoReturn getScaleX();
    TodoReturn getScaleY();
    TodoReturn getScheduler();
    TodoReturn getShaderProgram();
    TodoReturn getSkewX();
    TodoReturn getSkewY();
    TodoReturn getTag();
    TodoReturn getUserData();
    TodoReturn getUserObject();
    TodoReturn getVertexZ();
    TodoReturn getZOrder();
    TodoReturn ignoreAnchorPointForPosition(bool);
    TodoReturn insertChild(cocos2d::CCNode*, int);
    bool isIgnoreAnchorPointForPosition();
    bool isRunning();
    bool isVisible();
    TodoReturn node();
    TodoReturn nodeToParentTransform();
    TodoReturn nodeToWorldTransform();
    TodoReturn numberOfRunningActions();
    TodoReturn onEnter();
    TodoReturn onEnterTransitionDidFinish();
    TodoReturn onExit();
    TodoReturn onExitTransitionDidStart();
    TodoReturn parentToNodeTransform();
    TodoReturn pauseSchedulerAndActions();
    TodoReturn registerScriptHandler(int);
    TodoReturn removeAllChildrenWithCleanup(bool);
    TodoReturn removeChild(cocos2d::CCNode*, bool);
    TodoReturn removeChildByTag(int, bool);
    TodoReturn removeFromParentAndCleanup(bool);
    TodoReturn removeMeAndCleanup();
    TodoReturn reorderChild(cocos2d::CCNode*, int);
    TodoReturn resumeSchedulerAndActions();
    TodoReturn runAction(cocos2d::CCAction*);
    TodoReturn schedule(cocos2d::SEL_SCHEDULE);
    TodoReturn schedule(cocos2d::SEL_SCHEDULE, float);
    TodoReturn schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float);
    TodoReturn scheduleOnce(cocos2d::SEL_SCHEDULE, float);
    TodoReturn scheduleUpdate();
    TodoReturn scheduleUpdateWithPriority(int);
    void setActionManager(cocos2d::CCActionManager*);
    void setAnchorPoint(cocos2d::CCPoint const&);
    void setContentSize(cocos2d::CCSize);
    void setGLServerState(cocos2d::ccGLServerState);
    void setGrid(cocos2d::CCGridBase*);
    void setOrderOfArrival(int);
    void setParent(cocos2d::CCNode*);
    void setPosition(cocos2d::CCPoint const&);
    void setPosition(float, float);
    void setPositionX(float);
    void setPositionY(float);
    void setRotation(float);
    void setScale(float);
    void setScaleX(float);
    void setScaleY(float);
    void setScheduler(cocos2d::CCScheduler*);
    void setShaderProgram(cocos2d::CCGLProgram*);
    void setSkewX(float);
    void setSkewY(float);
    void setTag(int);
    void setUserData(void*);
    void setUserObject(cocos2d::CCObject*);
    void setVertexZ(float);
    void setVisible(bool);
    void setZOrder(int);
    TodoReturn sortAllChildren();
    TodoReturn stopAction(cocos2d::CCAction*);
    TodoReturn stopActionByTag(int);
    TodoReturn stopAllActions();
    TodoReturn transform();
    TodoReturn transformAncestors();
    TodoReturn unregisterScriptHandler();
    TodoReturn unschedule(cocos2d::SEL_SCHEDULE);
    TodoReturn unscheduleAllSelectors();
    TodoReturn unscheduleUpdate();
    TodoReturn updateTweenAction(float, char const*);
    TodoReturn visit();
    TodoReturn worldToNodeTransform();

}

[[link(android)]]
class cocos2d::CCRect {
    ~CCRect();
 
    TodoReturn CCRect();
    TodoReturn CCRect(cocos2d::CCRect const&);
    TodoReturn CCRect(float, float, float, float);
    TodoReturn CCRectContainsPoint(cocos2d::CCRect const&, cocos2d::CCPoint const&);
    TodoReturn CCRectEqualToRect(cocos2d::CCRect const&, cocos2d::CCRect const&);
    TodoReturn CCRectGetMaxX(cocos2d::CCRect const&);
    TodoReturn CCRectGetMaxY(cocos2d::CCRect const&);
    TodoReturn CCRectGetMidX(cocos2d::CCRect const&);
    TodoReturn CCRectGetMidY(cocos2d::CCRect const&);
    TodoReturn CCRectGetMinX(cocos2d::CCRect const&);
    TodoReturn CCRectGetMinY(cocos2d::CCRect const&);
    TodoReturn CCRectIntersectsRect(cocos2d::CCRect const&, cocos2d::CCRect const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    void setRect(float, float, float, float);

}

[[link(android)]]
class cocos2d::CCShow {
    ~CCShow();
 
    cocos2d::CCShow* create();
 
    TodoReturn CCShow();
    TodoReturn action();
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSize {
    ~CCSize();
 
    TodoReturn CCSize();
    TodoReturn CCSize(cocos2d::CCSize const&);
    TodoReturn CCSize(float, float);
    TodoReturn CCSizeEqualToSize(cocos2d::CCSize const&, cocos2d::CCSize const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    void setSize(float, float);

}

[[link(android)]]
class cocos2d::CCTime {
    TodoReturn gettimeofdayCocos2d(cocos2d::cc_timeval*, void*);
    TodoReturn timersubCocos2d(cocos2d::cc_timeval*, cocos2d::cc_timeval*);

}

[[link(android)]]
class cocos2d::CCZone {
    TodoReturn CCZone(cocos2d::CCObject*);

}

[[link(android)]]
class cocos2d::CCArray {
    ~CCArray();
 
    cocos2d::CCArray* create();
    cocos2d::CCArray* create(char const*);
    cocos2d::CCArray* create(cocos2d::CCArray*);
    // cocos2d::CCArray* create(cocos2d::CCObject*, ...);
    cocos2d::CCArray* create(unsigned int);
 
    TodoReturn CCArray();
    TodoReturn CCArray(cocos2d::CCArray const&);
    TodoReturn CCArray(unsigned int);
    TodoReturn addObject(cocos2d::CCObject*);
    TodoReturn addObjectsFromArray(cocos2d::CCArray*);
    TodoReturn array();
    TodoReturn arrayWithArray(cocos2d::CCArray*);
    TodoReturn arrayWithCapacity(unsigned int);
    TodoReturn arrayWithContentsOfFile(char const*);
    TodoReturn arrayWithContentsOfFileThreadSafe(char const*);
    TodoReturn arrayWithObject(cocos2d::CCObject*);
    // TodoReturn arrayWithObjects(cocos2d::CCObject*, ...);
    TodoReturn capacity();
    TodoReturn containsObject(cocos2d::CCObject*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn count();
    TodoReturn createWithContentsOfFileThreadSafe(char const*);
    TodoReturn createWithObject(cocos2d::CCObject*);
    TodoReturn exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    TodoReturn exchangeObjectAtIndex(unsigned int, unsigned int);
    TodoReturn fastRemoveObject(cocos2d::CCObject*);
    TodoReturn fastRemoveObjectAtIndex(unsigned int);
    TodoReturn indexOfObject(cocos2d::CCObject*);
    bool init();
    TodoReturn initWithArray(cocos2d::CCArray*);
    TodoReturn initWithCapacity(unsigned int);
    TodoReturn initWithObject(cocos2d::CCObject*);
    // TodoReturn initWithObjects(cocos2d::CCObject*, ...);
    TodoReturn insertObject(cocos2d::CCObject*, unsigned int);
    bool isEqualToArray(cocos2d::CCArray*);
    TodoReturn lastObject();
    TodoReturn objectAtIndex(unsigned int);
    TodoReturn randomObject();
    TodoReturn reduceMemoryFootprint();
    TodoReturn removeAllObjects();
    TodoReturn removeLastObject(bool);
    TodoReturn removeObject(cocos2d::CCObject*, bool);
    TodoReturn removeObjectAtIndex(unsigned int, bool);
    TodoReturn removeObjectsInArray(cocos2d::CCArray*);
    TodoReturn replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    TodoReturn reverseObjects();

}

[[link(android)]]
class cocos2d::CCBlink {
    ~CCBlink();
 
    cocos2d::CCBlink* create(float, unsigned int);
 
    TodoReturn CCBlink();
    TodoReturn actionWithDuration(float, unsigned int);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, unsigned int);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFlipX {
    ~CCFlipX();
 
    cocos2d::CCFlipX* create(bool);
 
    TodoReturn CCFlipX();
    TodoReturn actionWithFlipX(bool);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithFlipX(bool);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFlipY {
    ~CCFlipY();
 
    cocos2d::CCFlipY* create(bool);
 
    TodoReturn CCFlipY();
    TodoReturn actionWithFlipY(bool);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithFlipY(bool);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCImage {
    ~CCImage();
 
    TodoReturn CCImage();
    TodoReturn _initWithJpgData(void*, int);
    TodoReturn _initWithPngData(void*, int);
    TodoReturn _initWithRawData(void*, int, int, int, int);
    TodoReturn _initWithTiffData(void*, int);
    TodoReturn _saveImageToJPG(char const*);
    TodoReturn _saveImageToPNG(char const*, bool);
    TodoReturn getBitsPerComponent();
    TodoReturn getData();
    TodoReturn getHeight();
    TodoReturn getWidth();
    TodoReturn hasAlpha();
    TodoReturn initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int);
    TodoReturn initWithImageFile(char const*, cocos2d::CCImage::EImageFormat);
    TodoReturn initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat);
    TodoReturn initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);
    bool isPremultipliedAlpha();
    TodoReturn saveToFile(char const*, bool);

}

[[link(android)]]
class cocos2d::CCLayer {
    ~CCLayer();
 
    cocos2d::CCLayer* create();
 
    TodoReturn CCLayer();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
    TodoReturn didAccelerate(cocos2d::CCAcceleration*);
    TodoReturn excuteScriptTouchHandler(int, cocos2d::CCSet*);
    TodoReturn excuteScriptTouchHandler(int, cocos2d::CCTouch*);
    bool init();
    bool isAccelerometerEnabled();
    bool isKeypadEnabled();
    bool isTouchEnabled();
    TodoReturn node();
    TodoReturn onEnter();
    TodoReturn onEnterTransitionDidFinish();
    TodoReturn onExit();
    TodoReturn registerScriptTouchHandler(int, bool, int, bool);
    TodoReturn registerWithTouchDispatcher();
    void setAccelerometerEnabled(bool);
    void setKeypadEnabled(bool);
    void setTouchEnabled(bool);
    TodoReturn unregisterScriptTouchHandler();

}

[[link(android)]]
class cocos2d::CCPlace {
    ~CCPlace();
 
    cocos2d::CCPlace* create(cocos2d::CCPoint const&);
 
    TodoReturn CCPlace();
    TodoReturn actionWithPosition(cocos2d::CCPoint const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithPosition(cocos2d::CCPoint const&);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCPoint {
    ~CCPoint();
 
    TodoReturn CCPoint();
    TodoReturn CCPoint(cocos2d::CCPoint const&);
    TodoReturn CCPoint(float, float);
    TodoReturn CCPointEqualToPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    void setPoint(float, float);

}

[[link(android)]]
class cocos2d::CCScene {
    ~CCScene();
 
    cocos2d::CCScene* create();
 
    TodoReturn CCScene();
    bool init();
    TodoReturn node();

}

[[link(android)]]
class cocos2d::CCSpawn {
    ~CCSpawn();
 
    cocos2d::CCSpawn* create(cocos2d::CCArray*);
    // cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...);
    cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
 
    TodoReturn CCSpawn();
    TodoReturn actionOneTwo(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
    TodoReturn actionWithArray(cocos2d::CCArray*);
    // TodoReturn actions(cocos2d::CCFiniteTimeAction*, ...);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initOneTwo(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSpeed {
    ~CCSpeed();
 
    cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCSpeed();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithAction(cocos2d::CCActionInterval*, float);
    bool isDone();
    TodoReturn reverse();
    void setInnerAction(cocos2d::CCActionInterval*);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn step(float);
    TodoReturn stop();

}

[[link(android)]]
class cocos2d::CCTimer {
    ~CCTimer();
 
    TodoReturn CCTimer();
    TodoReturn initWithScriptHandler(int, float);
    TodoReturn initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
    TodoReturn initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float);
    TodoReturn timerWithScriptHandler(int, float);
    TodoReturn timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
    TodoReturn timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTouch {
    ~CCTouch();
 
    TodoReturn CCTouch();
    TodoReturn getID();
    TodoReturn locationInView();
    TodoReturn previousLocationInView();
    void setTouchInfo(int, float, float);

}

[[link(android)]]
class cocos2d::CCTwirl {
    ~CCTwirl();
 
    cocos2d::CCTwirl* create(cocos2d::CCPoint, int, float, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCTwirl();
    TodoReturn actionWithPosition(cocos2d::CCPoint, int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithPosition(cocos2d::CCPoint const&, int, float, cocos2d::_ccGridSize const&, float);
    void setPosition(cocos2d::CCPoint const&);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCWaves {
    ~CCWaves();
 
    cocos2d::CCWaves* create(int, float, bool, bool, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCWaves();
    TodoReturn actionWithWaves(int, float, bool, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithWaves(int, float, bool, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::BitmapDC {
    ~BitmapDC();
 
    TodoReturn BitmapDC();
    TodoReturn getBitmapFromJava(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, float);
    TodoReturn swapAlpha(unsigned int);

}

[[link(android)]]
class cocos2d::CCAction {
    ~CCAction();
 
    cocos2d::CCAction* create();
 
    TodoReturn CCAction();
    TodoReturn action();
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn description();
    TodoReturn getOriginalTarget();
    TodoReturn getTag();
    bool isDone();
    void setTag(int);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn step(float);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCCamera {
    ~CCCamera();
 
    TodoReturn CCCamera();
    TodoReturn description();
    TodoReturn getCenterXYZ(float*, float*, float*);
    TodoReturn getEyeXYZ(float*, float*, float*);
    TodoReturn getUpXYZ(float*, float*, float*);
    TodoReturn getZEye();
    bool init();
    bool isDirty();
    TodoReturn locate();
    TodoReturn restore();
    void setCenterXYZ(float, float, float);
    void setEyeXYZ(float, float, float);
    void setUpXYZ(float, float, float);

}

[[link(android)]]
class cocos2d::CCEaseIn {
    ~CCEaseIn();
 
    cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseIn();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFadeIn {
    ~CCFadeIn();
 
    cocos2d::CCFadeIn* create(float);
 
    TodoReturn CCFadeIn();
    TodoReturn actionWithDuration(float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFadeTo {
    ~CCFadeTo();
 
    cocos2d::CCFadeTo* create(float, unsigned char);
 
    TodoReturn CCFadeTo();
    TodoReturn actionWithDuration(float, unsigned char);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, unsigned char);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFollow {
    ~CCFollow();
 
    cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&);
 
    TodoReturn CCFollow();
    TodoReturn actionWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&);
    bool isDone();
    TodoReturn step(float);
    TodoReturn stop();

}

[[link(android)]]
class cocos2d::CCGrid3D {
    ~CCGrid3D();
 
    TodoReturn CCGrid3D();
    TodoReturn blit();
    TodoReturn calculateVertexPoints();
    TodoReturn gridWithSize(cocos2d::_ccGridSize const&);
    TodoReturn gridWithSize(cocos2d::_ccGridSize const&, cocos2d::CCTexture2D*, bool);
    TodoReturn originalVertex(cocos2d::_ccGridSize const&);
    TodoReturn reuse();
    void setVertex(cocos2d::_ccGridSize const&, cocos2d::_ccVertex3F const&);
    TodoReturn vertex(cocos2d::_ccGridSize const&);

}

[[link(android)]]
class cocos2d::CCJumpBy {
    ~CCJumpBy();
 
    cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int);
 
    TodoReturn CCJumpBy();
    TodoReturn actionWithDuration(float, cocos2d::CCPoint const&, float, unsigned int);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCJumpTo {
    ~CCJumpTo();
 
    cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int);
 
    TodoReturn CCJumpTo();
    TodoReturn actionWithDuration(float, cocos2d::CCPoint const&, float, int);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCLens3D {
    ~CCLens3D();
 
    cocos2d::CCLens3D* create(cocos2d::CCPoint const&, float, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCLens3D();
    TodoReturn actionWithPosition(cocos2d::CCPoint const&, float, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithPosition(cocos2d::CCPoint const&, float, cocos2d::_ccGridSize const&, float);
    void setPosition(cocos2d::CCPoint const&);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCLiquid {
    ~CCLiquid();
 
    cocos2d::CCLiquid* create(int, float, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCLiquid();
    TodoReturn actionWithWaves(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithWaves(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCMoveBy {
    ~CCMoveBy();
 
    cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&);
 
    TodoReturn CCMoveBy();
    TodoReturn actionWithDuration(float, cocos2d::CCPoint const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, cocos2d::CCPoint const&);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCMoveTo {
    ~CCMoveTo();
 
    cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&);
 
    TodoReturn CCMoveTo();
    TodoReturn actionWithDuration(float, cocos2d::CCPoint const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, cocos2d::CCPoint const&);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCObject {
    ~CCObject();
 
    TodoReturn CCObject();
    TodoReturn CCObject(cocos2d::CCObject const&);
    TodoReturn autorelease();
    TodoReturn canEncode();
    TodoReturn copy();
    TodoReturn createWithCoder(DS_Dictionary*);
    TodoReturn encodeWithCoder(DS_Dictionary*);
    TodoReturn getObjType();
    bool isEqual(cocos2d::CCObject const*);
    bool isSingleRefrence();
    TodoReturn release();
    TodoReturn retain();
    TodoReturn retainCount();
    void setObjType(cocos2d::CCObjectType);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCRepeat {
    ~CCRepeat();
 
    cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int);
 
    TodoReturn CCRepeat();
    TodoReturn actionWithAction(cocos2d::CCFiniteTimeAction*, unsigned int);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithAction(cocos2d::CCFiniteTimeAction*, unsigned int);
    bool isDone();
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSkewBy {
    ~CCSkewBy();
 
    cocos2d::CCSkewBy* create(float, float, float);
 
    TodoReturn CCSkewBy();
    TodoReturn actionWithDuration(float, float, float);
    TodoReturn initWithDuration(float, float, float);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCSkewTo {
    ~CCSkewTo();
 
    cocos2d::CCSkewTo* create(float, float, float);
 
    TodoReturn CCSkewTo();
    TodoReturn actionWithDuration(float, float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, float, float);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCSprite {
    ~CCSprite();
 
    cocos2d::CCSprite* create();
    cocos2d::CCSprite* create(char const*);
    cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
    cocos2d::CCSprite* create(cocos2d::CCSpriteFrame*);
    cocos2d::CCSprite* create(cocos2d::CCTexture2D*);
    cocos2d::CCSprite* create(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
 
    TodoReturn CCSprite();
    TodoReturn addChild(cocos2d::CCNode*);
    TodoReturn addChild(cocos2d::CCNode*, int);
    TodoReturn addChild(cocos2d::CCNode*, int, int);
    TodoReturn createWithSpriteFrameName(char const*);
    TodoReturn displayFrame();
    TodoReturn draw();
    TodoReturn getAtlasIndex();
    TodoReturn getBatchNode();
    TodoReturn getBlendFunc();
    TodoReturn getColor();
    TodoReturn getOpacity();
    TodoReturn getQuad();
    TodoReturn getTexture();
    TodoReturn getTextureRect();
    TodoReturn ignoreAnchorPointForPosition(bool);
    bool init();
    TodoReturn initWithFile(char const*);
    TodoReturn initWithFile(char const*, cocos2d::CCRect const&);
    TodoReturn initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn initWithSpriteFrameName(char const*);
    TodoReturn initWithTexture(cocos2d::CCTexture2D*);
    TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
    bool isDirty();
    bool isFlipX();
    bool isFlipY();
    bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
    bool isOpacityModifyRGB();
    bool isTextureRectRotated();
    TodoReturn node();
    TodoReturn removeAllChildrenWithCleanup(bool);
    TodoReturn removeChild(cocos2d::CCNode*, bool);
    TodoReturn reorderChild(cocos2d::CCNode*, int);
    void setAnchorPoint(cocos2d::CCPoint const&);
    void setAtlasIndex(unsigned int);
    void setBatchNode(cocos2d::CCSpriteBatchNode*);
    void setBlendFunc(cocos2d::_ccBlendFunc);
    void setColor(cocos2d::ccColor3B const&);
    void setDirty(bool);
    void setDirtyRecursively(bool);
    void setDisplayFrame(cocos2d::CCSpriteFrame*);
    void setDisplayFrameWithAnimationName(char const*, int);
    void setFlipX(bool);
    void setFlipY(bool);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setPosition(cocos2d::CCPoint const&);
    void setReorderChildDirtyRecursively();
    void setRotation(float);
    void setScale(float);
    void setScaleX(float);
    void setScaleY(float);
    void setSkewX(float);
    void setSkewY(float);
    void setTexture(cocos2d::CCTexture2D*);
    void setTextureAtlas(cocos2d::CCTextureAtlas*);
    void setTextureCoords(cocos2d::CCRect);
    void setTextureRect(cocos2d::CCRect const&);
    void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&);
    void setVertexRect(cocos2d::CCRect const&);
    void setVertexZ(float);
    void setVisible(bool);
    TodoReturn sortAllChildren();
    TodoReturn spriteWithFile(char const*);
    TodoReturn spriteWithFile(char const*, cocos2d::CCRect const&);
    TodoReturn spriteWithSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn spriteWithSpriteFrameName(char const*);
    TodoReturn spriteWithTexture(cocos2d::CCTexture2D*);
    TodoReturn spriteWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    TodoReturn updateBlendFunc();
    TodoReturn updateColor();
    TodoReturn updateTransform();
    TodoReturn updateTweenAction(float, char const*);

}

[[link(android)]]
class cocos2d::CCString {
    ~CCString();
 
    cocos2d::CCString* create(gd::string const&);
    cocos2d::CCString* create(unsigned char const*, unsigned long);
 
    TodoReturn CCString();
    TodoReturn CCString(char const*);
    TodoReturn CCString(cocos2d::CCString const&);
    TodoReturn CCString(gd::string const&);
    TodoReturn boolValue();
    TodoReturn compare(char const*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn createWithContentsOfFile(char const*);
    // TodoReturn createWithFormat(char const*, ...);
    TodoReturn doubleValue();
    TodoReturn floatValue();
    TodoReturn getCString();
    // TodoReturn initWithFormat(char const*, ...);
    TodoReturn initWithFormatAndValist(char const*, std::__va_list);
    TodoReturn intValue();
    bool isEqual(cocos2d::CCObject const*);
    TodoReturn length();
    TodoReturn stringWithCString(char const*);
    TodoReturn stringWithContentsOfFile(char const*);
    TodoReturn stringWithData(unsigned char const*, unsigned long);
    // TodoReturn stringWithFormat(char const*, ...);
    TodoReturn stringWithString(gd::string const&);
    TodoReturn uintValue();

}

[[link(android)]]
class cocos2d::CCThread {
    ~CCThread();
 
    TodoReturn CCThread();
    TodoReturn createAutoreleasePool();

}

[[link(android)]]
class cocos2d::CCTintBy {
    ~CCTintBy();
 
    cocos2d::CCTintBy* create(float, short, short, short);
 
    TodoReturn CCTintBy();
    TodoReturn actionWithDuration(float, short, short, short);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, short, short, short);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCTintTo {
    ~CCTintTo();
 
    cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char);
 
    TodoReturn CCTintTo();
    TodoReturn actionWithDuration(float, unsigned char, unsigned char, unsigned char);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, unsigned char, unsigned char, unsigned char);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::ZipUtils {
    TodoReturn ccInflateCCZFile(char const*, unsigned char**);
    TodoReturn ccInflateGZipFile(char const*, unsigned char**);
    TodoReturn ccInflateMemory(unsigned char*, unsigned int, unsigned char**);
    TodoReturn ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
    TodoReturn ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);

}

[[link(android)]]
class cocos2d::CCAnimate {
    ~CCAnimate();
 
    cocos2d::CCAnimate* create(cocos2d::CCAnimation*);
 
    TodoReturn CCAnimate();
    TodoReturn actionWithAnimation(cocos2d::CCAnimation*);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn getAnimation();
    TodoReturn initWithAnimation(cocos2d::CCAnimation*);
    TodoReturn reverse();
    void setAnimation(cocos2d::CCAnimation*);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn stop();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCCopying {
    TodoReturn CCCopying();
    TodoReturn CCCopying(cocos2d::CCCopying const&);
    TodoReturn copyWithZone(cocos2d::CCZone*);

}

[[link(android)]]
class cocos2d::CCEaseOut {
    ~CCEaseOut();
 
    cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);
 
    TodoReturn CCEaseOut();
    TodoReturn actionWithAction(cocos2d::CCActionInterval*, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCEGLView {
    ~CCEGLView();
 
    TodoReturn CCEGLView();
    TodoReturn end();
    bool isOpenGLReady();
    void setIMEKeyboardState(bool);
    TodoReturn sharedOpenGLView();
    TodoReturn swapBuffers();

}

[[link(android)]]
class cocos2d::CCFadeOut {
    ~CCFadeOut();
 
    cocos2d::CCFadeOut* create(float);
 
    TodoReturn CCFadeOut();
    TodoReturn actionWithDuration(float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFlipX3D {
    ~CCFlipX3D();
 
    cocos2d::CCFlipX3D* create(float);
 
    TodoReturn CCFlipX3D();
    TodoReturn actionWithDuration(float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float);
    TodoReturn initWithSize(cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCFlipY3D {
    ~CCFlipY3D();
 
    cocos2d::CCFlipY3D* create(float);
 
    TodoReturn CCFlipY3D();
    TodoReturn actionWithDuration(float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCGrabber {
    ~CCGrabber();
 
    TodoReturn CCGrabber();
    TodoReturn afterRender(cocos2d::CCTexture2D*);
    TodoReturn beforeRender(cocos2d::CCTexture2D*);
    TodoReturn grab(cocos2d::CCTexture2D*);

}

[[link(android)]]
class cocos2d::CCInteger {
    ~CCInteger();
 
    cocos2d::CCInteger* create(int);
 
    TodoReturn CCInteger(int);
    TodoReturn getValue();

}

[[link(android)]]
class cocos2d::CCScaleBy {
    ~CCScaleBy();
 
    cocos2d::CCScaleBy* create(float, float);
    cocos2d::CCScaleBy* create(float, float, float);
 
    TodoReturn CCScaleBy();
    TodoReturn actionWithDuration(float, float);
    TodoReturn actionWithDuration(float, float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn reverse();
    TodoReturn startWithTarget(cocos2d::CCNode*);

}

[[link(android)]]
class cocos2d::CCScaleTo {
    ~CCScaleTo();
 
    cocos2d::CCScaleTo* create(float, float);
    cocos2d::CCScaleTo* create(float, float, float);
 
    TodoReturn CCScaleTo();
    TodoReturn actionWithDuration(float, float);
    TodoReturn actionWithDuration(float, float, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithDuration(float, float);
    TodoReturn initWithDuration(float, float, float);
    TodoReturn startWithTarget(cocos2d::CCNode*);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCShaky3D {
    ~CCShaky3D();
 
    cocos2d::CCShaky3D* create(int, bool, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCShaky3D();
    TodoReturn actionWithRange(int, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithRange(int, bool, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::CCWaves3D {
    ~CCWaves3D();
 
    cocos2d::CCWaves3D* create(int, float, cocos2d::_ccGridSize const&, float);
 
    TodoReturn CCWaves3D();
    TodoReturn actionWithWaves(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn copyWithZone(cocos2d::CCZone*);
    TodoReturn initWithWaves(int, float, cocos2d::_ccGridSize const&, float);
    TodoReturn update(float);

}

[[link(android)]]
class cocos2d::extension::CCListView {
    ~CCListView();
 
    cocos2d::extension::CCListView* create(cocos2d::extension::CCListViewMode);
 
    TodoReturn CCListView();
    TodoReturn appendRowToBack(unsigned int);
    TodoReturn appendRowToFront(unsigned int);
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn cellAtRow(unsigned int);
    TodoReturn clearUnvisibleRows();
    TodoReturn deleteCellsAtRow(unsigned int, unsigned int);
    TodoReturn displayVisibleRows();
    TodoReturn easeOutWithDistance(float);
    TodoReturn finishEaseOut();
    TodoReturn finishFix();
    TodoReturn finishScroll();
    TodoReturn fixFirstRow();
    TodoReturn fixLastRow();
    TodoReturn getMode();
    TodoReturn getSlideDir();
    TodoReturn getSlideDir(cocos2d::CCPoint, cocos2d::CCPoint);
    TodoReturn initWithMode(cocos2d::extension::CCListViewMode);
    TodoReturn insertCellsAtRow(unsigned int, unsigned int);
    bool isFullFill();
    bool isMenuTouch(cocos2d::CCTouch*, cocos2d::CCNode*);
    bool isTouchInside(cocos2d::CCTouch*);
    TodoReturn onEnter();
    TodoReturn onExit();
    TodoReturn registerWithTouchDispatcher();
    TodoReturn reload();
    TodoReturn rowForTouch(cocos2d::CCTouch*);
    TodoReturn scrollCellToBack(unsigned int, bool);
    TodoReturn scrollCellToFront(unsigned int, bool);
    TodoReturn selectCellAtRow(unsigned int);
    void setDelegate(cocos2d::extension::CCListViewDelegate const*);
    void setDelegateName(char const*);
    void setEnabled(bool);
    void setSeparatorStyle(cocos2d::extension::CCListViewCellSeparatorStyle);
    TodoReturn stopActionImmediately();
    TodoReturn triggerCellForRow(unsigned int);
    TodoReturn triggerDidClickCellAtRow(unsigned int);
    TodoReturn triggerDidScrollToRow(unsigned int);
    TodoReturn triggerNumberOfCells();
    TodoReturn unselectCellAtRow(unsigned int);
    TodoReturn viewWithMode(cocos2d::extension::CCListViewMode);
    TodoReturn visit();

}

[[link(android)]]
class cocos2d::extension::CCHttpClient {
    ~CCHttpClient();
 
    TodoReturn CCHttpClient();
    TodoReturn destroyInstance();
    TodoReturn dispatchResponseCallbacks(float);
    TodoReturn getInstance();
    TodoReturn getTimeoutForConnect();
    TodoReturn getTimeoutForRead();
    TodoReturn lazyInitThreadSemphore();
    TodoReturn send(cocos2d::extension::CCHttpRequest*);
    void setTimeoutForConnect(int);
    void setTimeoutForRead(int);

}

[[link(android)]]
class cocos2d::extension::CCInvocation {
    ~CCInvocation();
 
    TodoReturn CCInvocation(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*, unsigned int), unsigned int);
    TodoReturn getAction();
    TodoReturn getControlEvent();
    TodoReturn getTarget();
    TodoReturn invoke(cocos2d::CCObject*);

}

[[link(android)]]
class cocos2d::extension::CCMenuLoader {
    ~CCMenuLoader();
 
    TodoReturn CCMenuLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();

}

[[link(android)]]
class cocos2d::extension::CCNodeLoader {
    ~CCNodeLoader();
 
    TodoReturn CCNodeLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loadCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeAnimation(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCAnimation*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeBlock(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::extension::BlockData*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeBlockCCControl(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::extension::BlockCCControlData*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, unsigned char, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeCCBFile(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeCheck(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor4FVar(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor4F*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeDegrees(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFlip(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloat(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloatScale(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloatVar(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFntFile(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFontTTF(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeInteger(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, int, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeIntegerLabeled(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, int, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypePoint(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCPoint, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypePointLock(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCPoint, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypePosition(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCPoint, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeScaleLock(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSize(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSize, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSpriteFrame(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSpriteFrame*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeString(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeText(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeTexture(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCTexture2D*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeAnimation(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeBlock(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeBlockCCControl(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeCCBFile(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeCheck(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeColor4FVar(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeDegrees(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeFlip(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeFloat(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeFloatScale(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeFloatVar(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeFntFile(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeFontTTF(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeInteger(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeIntegerLabeled(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypePoint(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypePointLock(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypePosition(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeScaleLock(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeSize(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeSpriteFrame(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeString(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeText(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parsePropTypeTexture(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn parseProperties(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCScrollView {
    ~CCScrollView();
 
    cocos2d::extension::CCScrollView* create();
    cocos2d::extension::CCScrollView* create(cocos2d::CCSize, cocos2d::CCNode*);
 
    TodoReturn CCScrollView();
    TodoReturn addChild(cocos2d::CCNode*);
    TodoReturn addChild(cocos2d::CCNode*, int);
    TodoReturn addChild(cocos2d::CCNode*, int, int);
    TodoReturn afterDraw();
    TodoReturn beforeDraw();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn deaccelerateScrolling(float);
    TodoReturn getContainer();
    TodoReturn getContentOffset();
    TodoReturn getContentSize();
    TodoReturn getViewSize();
    TodoReturn getZoomScale();
    bool init();
    TodoReturn initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*);
    bool isNodeVisible(cocos2d::CCNode*);
    TodoReturn maxContainerOffset();
    TodoReturn minContainerOffset();
    TodoReturn node();
    TodoReturn pause(cocos2d::CCObject*);
    TodoReturn performedAnimatedScroll(float);
    TodoReturn registerWithTouchDispatcher();
    TodoReturn relocateContainer(bool);
    TodoReturn resume(cocos2d::CCObject*);
    void setBounceable(bool);
    void setClippingToBounds(bool);
    void setContainer(cocos2d::CCNode*);
    void setContentOffset(cocos2d::CCPoint, bool);
    void setContentOffsetInDuration(cocos2d::CCPoint, float);
    void setContentSize(cocos2d::CCSize);
    void setDirection(cocos2d::extension::CCScrollViewDirection);
    void setTouchEnabled(bool);
    void setViewSize(cocos2d::CCSize);
    void setZoomScale(float);
    void setZoomScale(float, bool);
    void setZoomScaleInDuration(float, float);
    TodoReturn stoppedAnimatedScroll(cocos2d::CCNode*);
    TodoReturn viewWithViewSize(cocos2d::CCSize, cocos2d::CCNode*);
    TodoReturn visit();

}

[[link(android)]]
class cocos2d::extension::CCBFileLoader {
    ~CCBFileLoader();
 
    TodoReturn CCBFileLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeCCBFile(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCHttpRequest {
    ~CCHttpRequest();
 
    TodoReturn CCHttpRequest();
    TodoReturn getHeaders();
    TodoReturn getRequestData();
    TodoReturn getRequestDataSize();
    TodoReturn getRequestType();
    TodoReturn getSelector();
    TodoReturn getTag();
    TodoReturn getTarget();
    TodoReturn getUrl();
    void setRequestData(char const*, unsigned int);
    void setRequestType(cocos2d::extension::CCHttpRequest::HttpRequestType);
    void setResponseCallback(cocos2d::CCObject*, cocos2d::SEL_CallFuncND);
    void setTag(char const*);
    void setUrl(char const*);

}

[[link(android)]]
class cocos2d::extension::CCLayerLoader {
    ~CCLayerLoader();
 
    TodoReturn CCLayerLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeCheck(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCMenuPassive {
    ~CCMenuPassive();
 
    cocos2d::extension::CCMenuPassive* create();
    // cocos2d::extension::CCMenuPassive* create(cocos2d::CCNode*, ...);
 
    TodoReturn CCMenuPassive();
    TodoReturn alignItemsHorizontally();
    TodoReturn alignItemsHorizontallyWithPadding(float);
    // TodoReturn alignItemsInColumns(unsigned int, ...);
    TodoReturn alignItemsInColumns(unsigned int, std::__va_list);
    // TodoReturn alignItemsInRows(unsigned int, ...);
    TodoReturn alignItemsInRows(unsigned int, std::__va_list);
    TodoReturn alignItemsVertically();
    TodoReturn alignItemsVerticallyWithPadding(float);
    TodoReturn createWithItem(cocos2d::CCNode*);
    TodoReturn getColor();
    TodoReturn getOpacity();
    TodoReturn initWithItems(cocos2d::CCNode*, std::__va_list);
    bool isOpacityModifyRGB();
    TodoReturn menuWithItem(cocos2d::CCNode*);
    // TodoReturn menuWithItems(cocos2d::CCNode*, ...);
    TodoReturn node();
    void setColor(cocos2d::ccColor3B const&);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);

}

[[link(android)]]
class cocos2d::extension {
    TodoReturn configureCURL(void*);
    TodoReturn processGetTask(cocos2d::extension::CCHttpRequest*, unsigned int (*)(void*, unsigned int, unsigned int, void*), void*, int*);
    TodoReturn processPostTask(cocos2d::extension::CCHttpRequest*, unsigned int (*)(void*, unsigned int, unsigned int, void*), void*, int*);
    TodoReturn writeData(void*, unsigned int, unsigned int, void*);

}

[[link(android)]]
class cocos2d::extension::CCControlUtils {
    TodoReturn CCRectUnion(cocos2d::CCRect const&, cocos2d::CCRect const&);
    TodoReturn HSVfromRGB(cocos2d::extension::RGBA);
    TodoReturn RGBfromHSV(cocos2d::extension::HSV);
    TodoReturn addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint);

}

[[link(android)]]
class cocos2d::extension::CCHttpResponse {
    ~CCHttpResponse();
 
    TodoReturn CCHttpResponse(cocos2d::extension::CCHttpRequest*);
    TodoReturn getErrorBuffer();
    TodoReturn getHttpRequest();
    TodoReturn getResponseCode();
    TodoReturn getResponseData();
    bool isSucceed();
    void setErrorBuffer(char const*);
    void setResponseCode(int);
    void setSucceed(bool);

}

[[link(android)]]
class cocos2d::extension::CCListViewCell {
    ~CCListViewCell();
 
    TodoReturn CCListViewCell();
    TodoReturn draw();
    TodoReturn getOwner();
    TodoReturn initWithColorWidthHeight(cocos2d::ccColor4B, float, float);
    TodoReturn node();
    TodoReturn selected();
    void setColor(cocos2d::ccColor3B);
    void setOpacity(unsigned char);
    void setSelectionColor(cocos2d::ccColor4B);
    void setSeparatorStyle(cocos2d::extension::CCListViewCellSeparatorStyle);
    TodoReturn unselected();

}

[[link(android)]]
class cocos2d::extension::CCScale9Sprite {
    ~CCScale9Sprite();
 
    cocos2d::extension::CCScale9Sprite* create();
    cocos2d::extension::CCScale9Sprite* create(char const*);
    cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect);
    cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect, cocos2d::CCRect);
    cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect, char const*);
 
    TodoReturn CCScale9Sprite();
    TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect);
    TodoReturn createWithSpriteFrameName(char const*);
    TodoReturn createWithSpriteFrameName(char const*, cocos2d::CCRect);
    TodoReturn getCapInsets();
    TodoReturn getColor();
    TodoReturn getInsetBottom();
    TodoReturn getInsetLeft();
    TodoReturn getInsetRight();
    TodoReturn getInsetTop();
    TodoReturn getOpacity();
    TodoReturn getOriginalSize();
    TodoReturn getPreferredSize();
    bool init();
    TodoReturn initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect);
    TodoReturn initWithFile(char const*);
    TodoReturn initWithFile(char const*, cocos2d::CCRect);
    TodoReturn initWithFile(char const*, cocos2d::CCRect, cocos2d::CCRect);
    TodoReturn initWithFile(cocos2d::CCRect, char const*);
    TodoReturn initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect);
    TodoReturn initWithSpriteFrameName(char const*);
    TodoReturn initWithSpriteFrameName(char const*, cocos2d::CCRect);
    bool isOpacityModifyRGB();
    TodoReturn node();
    TodoReturn resizableSpriteWithCapInsets(cocos2d::CCRect);
    void setCapInsets(cocos2d::CCRect);
    void setColor(cocos2d::ccColor3B const&);
    void setContentSize(cocos2d::CCSize const&);
    void setInsetBottom(float);
    void setInsetLeft(float);
    void setInsetRight(float);
    void setInsetTop(float);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setOriginalSize(cocos2d::CCSize);
    void setPreferredSize(cocos2d::CCSize);
    void setSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn spriteWithFile(char const*);
    TodoReturn spriteWithFile(char const*, cocos2d::CCRect);
    TodoReturn spriteWithFile(char const*, cocos2d::CCRect, cocos2d::CCRect);
    TodoReturn spriteWithFile(cocos2d::CCRect, char const*);
    TodoReturn spriteWithSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn spriteWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect);
    TodoReturn spriteWithSpriteFrameName(char const*);
    TodoReturn spriteWithSpriteFrameName(char const*, cocos2d::CCRect);
    TodoReturn updateCapInset();
    TodoReturn updatePositions();
    TodoReturn updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect);
    TodoReturn visit();

}

[[link(android)]]
class cocos2d::extension::CCSpriteLoader {
    ~CCSpriteLoader();
 
    TodoReturn CCSpriteLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, unsigned char, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFlip(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSpriteFrame(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSpriteFrame*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCColor3bObject {
    ~CCColor3bObject();
 
    TodoReturn CCColor3bObject(cocos2d::ccColor3B);

}

[[link(android)]]
class cocos2d::extension::CCControlButton {
    ~CCControlButton();
 
    cocos2d::extension::CCControlButton* create();
    cocos2d::extension::CCControlButton* create(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*);
    cocos2d::extension::CCControlButton* create(cocos2d::extension::CCScale9Sprite*);
    cocos2d::extension::CCControlButton* create(gd::string, char const*, float);
 
    TodoReturn CCControlButton();
    TodoReturn buttonWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*);
    TodoReturn buttonWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*);
    TodoReturn buttonWithTitleAndFontNameAndFontSize(gd::string, char const*, float);
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn getAdjustBackgroundImage();
    TodoReturn getBackgroundSpriteForState(unsigned int);
    TodoReturn getCurrentTitle();
    TodoReturn getCurrentTitleColor();
    TodoReturn getHorizontalOrigin();
    TodoReturn getIsPushed();
    TodoReturn getLabelAnchorPoint();
    TodoReturn getOpacity();
    TodoReturn getPreferredSize();
    TodoReturn getTitleBMFontForState(unsigned int);
    TodoReturn getTitleColorForState(unsigned int);
    TodoReturn getTitleForState(unsigned int);
    TodoReturn getTitleLabelForState(unsigned int);
    TodoReturn getTitleTTFForState(unsigned int);
    TodoReturn getTitleTTFSizeForState(unsigned int);
    TodoReturn getVerticalMargin();
    TodoReturn getZoomOnTouchDown();
    bool init();
    TodoReturn initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*);
    TodoReturn initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*);
    TodoReturn initWithTitleAndFontNameAndFontSize(gd::string, char const*, float);
    TodoReturn needsLayout();
    TodoReturn node();
    void setAdjustBackgroundImage(bool);
    void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int);
    void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int);
    void setEnabled(bool);
    void setHighlighted(bool);
    void setLabelAnchorPoint(cocos2d::CCPoint);
    void setMargins(int, int);
    void setOpacity(unsigned char);
    void setPreferredSize(cocos2d::CCSize);
    void setSelected(bool);
    void setTitleBMFontForState(char const*, unsigned int);
    void setTitleColorForState(cocos2d::ccColor3B, unsigned int);
    void setTitleForState(cocos2d::CCString*, unsigned int);
    void setTitleLabelForState(cocos2d::CCNode*, unsigned int);
    void setTitleTTFForState(char const*, unsigned int);
    void setTitleTTFSizeForState(float, unsigned int);
    void setZoomOnTouchDown(bool);

}

[[link(android)]]
class cocos2d::extension::CCControlLoader {
    ~CCControlLoader();
 
    TodoReturn CCControlLoader();
    TodoReturn onHandlePropTypeBlockCCControl(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::extension::BlockCCControlData*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeCheck(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCControlSlider {
    ~CCControlSlider();
 
    cocos2d::extension::CCControlSlider* create(char const*, char const*, char const*);
    cocos2d::extension::CCControlSlider* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCMenuItem*);
 
    TodoReturn CCControlSlider();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn getBackgroundSprite();
    TodoReturn getMaximumValue();
    TodoReturn getMinimumValue();
    TodoReturn getProgressSprite();
    TodoReturn getSnappingInterval();
    TodoReturn getThumbItem();
    TodoReturn getTouchLocationInControl(cocos2d::CCTouch*);
    TodoReturn getValue();
    TodoReturn initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCMenuItem*);
    void setMaximumValue(float);
    void setMinimumValue(float);
    void setSnappingInterval(float);
    void setValue(float);
    TodoReturn sliderBegan(cocos2d::CCPoint);
    TodoReturn sliderEnded(cocos2d::CCPoint);
    TodoReturn sliderMoved(cocos2d::CCPoint);
    TodoReturn sliderWithFiles(char const*, char const*, char const*);
    TodoReturn sliderWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCMenuItem*);
    TodoReturn valueForLocation(cocos2d::CCPoint);

}

[[link(android)]]
class cocos2d::extension::CCControlSwitch {
    ~CCControlSwitch();
 
    cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);
    cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);
 
    TodoReturn CCControlSwitch();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn hasMoved();
    TodoReturn initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);
    TodoReturn initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);
    TodoReturn locationFromTouch(cocos2d::CCTouch*);
    void setEnabled(bool);
    void setOn(bool);
    void setOn(bool, bool);
    TodoReturn switchWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);
    TodoReturn switchWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);

}

[[link(android)]]
class cocos2d::extension::CCLabelTTFLoader {
    ~CCLabelTTFLoader();
 
    TodoReturn CCLabelTTFLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, unsigned char, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloatScale(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFontTTF(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeIntegerLabeled(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, int, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSize(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSize, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeText(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCMenuItemLoader {
    ~CCMenuItemLoader();
 
    TodoReturn CCMenuItemLoader();
    TodoReturn onHandlePropTypeBlock(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::extension::BlockData*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeCheck(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCTextureWatcher {
    ~CCTextureWatcher();
 
    TodoReturn CCListView_cellForRow(cocos2d::extension::CCListView*, cocos2d::extension::_CCListViewProtrolData*);
    TodoReturn CCListView_didClickCellAtRow(cocos2d::extension::CCListView*, cocos2d::extension::_CCListViewProtrolData*);
    TodoReturn CCListView_didScrollToRow(cocos2d::extension::CCListView*, cocos2d::extension::_CCListViewProtrolData*);
    TodoReturn CCListView_numberOfCells(cocos2d::extension::CCListView*, cocos2d::extension::_CCListViewProtrolData*);
    TodoReturn CCTextureWatcher();
    TodoReturn actionFresh(cocos2d::CCObject*);
    TodoReturn actionHide(cocos2d::CCObject*);
    TodoReturn dovisit();
    TodoReturn fresh();
    TodoReturn hide();
    TodoReturn purgeTextureWatcher();
    void setDisplayWatcher(bool);
    TodoReturn sharedTextureWatcher();
    TodoReturn visit(void*);

}

[[link(android)]]
class cocos2d::extension::CCControlHuePicker {
    ~CCControlHuePicker();
 
    cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint);
 
    TodoReturn CCControlHuePicker();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn checkSliderPosition(cocos2d::CCPoint);
    TodoReturn getBackground();
    TodoReturn getHue();
    TodoReturn getHuePercentage();
    TodoReturn getSlider();
    TodoReturn getStartPos();
    TodoReturn initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint);
    TodoReturn pickerWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint);
    void setHue(float);
    void setHuePercentage(float);
    TodoReturn updateSliderPosition(cocos2d::CCPoint);

}

[[link(android)]]
class cocos2d::extension::CCLayerColorLoader {
    ~CCLayerColorLoader();
 
    TodoReturn CCLayerColorLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, unsigned char, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCListViewDelegate {
    ~CCListViewDelegate();
 
    TodoReturn CCListViewDelegate();

}

[[link(android)]]
class cocos2d::extension::CCScrollViewLoader {
    ~CCScrollViewLoader();
 
    TodoReturn CCScrollViewLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeCCBFile(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeCheck(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloat(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeIntegerLabeled(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, int, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCLabelBMFontLoader {
    ~CCLabelBMFontLoader();
 
    TodoReturn CCLabelBMFontLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, unsigned char, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFntFile(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeText(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCNodeLoaderLibrary {
    ~CCNodeLoaderLibrary();
 
    TodoReturn CCNodeLoaderLibrary();
    TodoReturn getCCNodeLoader(cocos2d::CCString*);
    TodoReturn library();
    TodoReturn newDefaultCCNodeLoaderLibrary();
    TodoReturn purge(bool);
    TodoReturn purgeSharedCCNodeLoaderLibrary();
    TodoReturn registerCCNodeLoader(char const*, cocos2d::extension::CCNodeLoader*);
    TodoReturn registerCCNodeLoader(cocos2d::CCString*, cocos2d::extension::CCNodeLoader*);
    TodoReturn registerDefaultCCNodeLoaders();
    TodoReturn sharedCCNodeLoaderLibrary();
    TodoReturn unregisterCCNodeLoader(char const*);
    TodoReturn unregisterCCNodeLoader(cocos2d::CCString*);

}

[[link(android)]]
class cocos2d::extension::CCNotificationCenter {
    ~CCNotificationCenter();
 
    TodoReturn CCNotificationCenter();
    TodoReturn addObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*);
    TodoReturn observerExisted(cocos2d::CCObject*, char const*);
    TodoReturn postNotification(char const*);
    TodoReturn postNotification(char const*, cocos2d::CCObject*);
    TodoReturn purgeNotificationCenter();
    TodoReturn removeObserver(cocos2d::CCObject*, char const*);
    TodoReturn sharedNotificationCenter();

}

[[link(android)]]
class cocos2d::extension::CCScale9SpriteLoader {
    ~CCScale9SpriteLoader();
 
    TodoReturn CCScale9SpriteLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, unsigned char, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloat(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSize(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSize, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSpriteFrame(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSpriteFrame*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCControlButtonLoader {
    ~CCControlButtonLoader();
 
    TodoReturn CCControlButtonLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeCheck(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, bool, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloatScale(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFontTTF(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypePoint(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCPoint, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSize(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSize, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeSpriteFrame(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSpriteFrame*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeString(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCString*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCControlColourPicker {
    ~CCControlColourPicker();
 
    cocos2d::extension::CCControlColourPicker* create();
 
    TodoReturn CCControlColourPicker();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn colourPicker();
    TodoReturn colourSliderValueChanged(cocos2d::CCObject*, unsigned int);
    TodoReturn getBackground();
    TodoReturn getColorValue();
    TodoReturn hueSliderValueChanged(cocos2d::CCObject*, unsigned int);
    bool init();
    void setColorValue(cocos2d::ccColor3B const&);
    TodoReturn updateControlPicker();
    TodoReturn updateHueAndControlPicker();

}

[[link(android)]]
class cocos2d::extension::CCControlSwitchSprite {
    ~CCControlSwitchSprite();
 
    TodoReturn CCControlSwitchSprite();
    TodoReturn draw();
    TodoReturn getMaskLocation();
    TodoReturn getMaskTexture();
    TodoReturn getOffLabel();
    TodoReturn getOffPosition();
    TodoReturn getOffSprite();
    TodoReturn getOnLabel();
    TodoReturn getOnPosition();
    TodoReturn getOnSprite();
    TodoReturn getSliderXPosition();
    TodoReturn getTextureLocation();
    TodoReturn getThumbSprite();
    TodoReturn initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);
    TodoReturn needsLayout();
    TodoReturn offSideWidth();
    TodoReturn onSideWidth();
    void setMaskLocation(unsigned int);
    void setMaskTexture(cocos2d::CCTexture2D*);
    void setOffLabel(cocos2d::CCLabelTTF*);
    void setOffPosition(float);
    void setOffSprite(cocos2d::CCSprite*);
    void setOnLabel(cocos2d::CCLabelTTF*);
    void setOnPosition(float);
    void setOnSprite(cocos2d::CCSprite*);
    void setSliderXPosition(float);
    void setTextureLocation(unsigned int);
    void setThumbSprite(cocos2d::CCSprite*);
    TodoReturn updateTweenAction(float, char const*);

}

[[link(android)]]
class cocos2d::extension::CCLayerGradientLoader {
    ~CCLayerGradientLoader();
 
    TodoReturn CCLayerGradientLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeByte(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, unsigned char, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor3(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor3B, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypePoint(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCPoint, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCMenuItemImageLoader {
    ~CCMenuItemImageLoader();
 
    TodoReturn CCMenuItemImageLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeSpriteFrame(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCSpriteFrame*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCNotificationObserver {
    ~CCNotificationObserver();
 
    TodoReturn CCNotificationObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*);
    TodoReturn getName();
    TodoReturn getObject();
    TodoReturn getSelector();
    TodoReturn getTarget();
    TodoReturn performSelector(cocos2d::CCObject*);

}

[[link(android)]]
class cocos2d::extension::CCParticleSystemQuadLoader {
    ~CCParticleSystemQuadLoader();
 
    TodoReturn CCParticleSystemQuadLoader();
    TodoReturn createCCNode(cocos2d::CCNode*, cocos2d::extension::CCBReader*);
    TodoReturn loader();
    TodoReturn onHandlePropTypeBlendFunc(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::_ccBlendFunc, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeColor4FVar(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::ccColor4F*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloat(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeFloatVar(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, float*, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeInteger(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, int, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeIntegerLabeled(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, int, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypePoint(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCPoint, cocos2d::extension::CCBReader*);
    TodoReturn onHandlePropTypeTexture(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCString*, cocos2d::CCTexture2D*, cocos2d::extension::CCBReader*);

}

[[link(android)]]
class cocos2d::extension::CCControlSaturationBrightnessPicker {
    ~CCControlSaturationBrightnessPicker();
 
    cocos2d::extension::CCControlSaturationBrightnessPicker* create(cocos2d::CCNode*, cocos2d::CCPoint);
 
    TodoReturn CCControlSaturationBrightnessPicker();
    TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn checkSliderPosition(cocos2d::CCPoint);
    TodoReturn getBackground();
    TodoReturn getBrightness();
    TodoReturn getOverlay();
    TodoReturn getSaturation();
    TodoReturn getShadow();
    TodoReturn getSlider();
    TodoReturn getStartPos();
    TodoReturn initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint);
    TodoReturn pickerWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint);
    TodoReturn updateDraggerWithHSV(cocos2d::extension::HSV);
    TodoReturn updateSliderPosition(cocos2d::CCPoint);
    TodoReturn updateWithHSV(cocos2d::extension::HSV);

}

[[link(android)]]
class cocos2d::extension::CCRange {
    TodoReturn CCLocationInRange(unsigned int, cocos2d::extension::CCRange);
    TodoReturn CCMaxRange(cocos2d::extension::CCRange);
    TodoReturn CCRange();
    TodoReturn CCRange(unsigned int, unsigned int);

}

[[link(android)]]
class cocos2d::extension::CCSpacer {
    ~CCSpacer();
 
    TodoReturn CCSpacer();
    TodoReturn horizontalSpacer(float);
    TodoReturn verticalSpacer(float);

}

[[link(android)]]
class cocos2d::extension::CCBReader {
    ~CCBReader();
 
    TodoReturn CCBReader(cocos2d::extension::CCBReader*);
    TodoReturn CCBReader(cocos2d::extension::CCNodeLoaderLibrary*, cocos2d::extension::CCBMemberVariableAssigner*, cocos2d::extension::CCBSelectorResolver*, cocos2d::extension::CCNodeLoaderListener*);
    TodoReturn addLoadedSpriteSheet(cocos2d::CCString*);
    TodoReturn alignBits();
    TodoReturn concat(cocos2d::CCString*, cocos2d::CCString*);
    TodoReturn deletePathExtension(cocos2d::CCString*);
    TodoReturn endsWith(cocos2d::CCString*, cocos2d::CCString*);
    TodoReturn getBit();
    TodoReturn getCCBMemberVariableAssigner();
    TodoReturn getCCBRootPath();
    TodoReturn getCCBSelectorResolver();
    TodoReturn getContainerSize(cocos2d::CCNode*);
    TodoReturn getOwner();
    TodoReturn getResolutionScale();
    TodoReturn getRootNode();
    bool isSpriteSheetLoaded(cocos2d::CCString*);
    TodoReturn lastPathComponent(cocos2d::CCString*);
    TodoReturn readBool();
    TodoReturn readByte();
    TodoReturn readCachedString();
    TodoReturn readFloat();
    TodoReturn readHeader();
    TodoReturn readInt(bool);
    TodoReturn readNodeGraph();
    TodoReturn readNodeGraph(cocos2d::CCNode*);
    TodoReturn readNodeGraphFromFile(char const*, char const*, cocos2d::CCObject*);
    TodoReturn readNodeGraphFromFile(char const*, char const*, cocos2d::CCObject*, cocos2d::CCSize);
    TodoReturn readNodeGraphFromFile(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCObject*);
    TodoReturn readNodeGraphFromFile(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCObject*, cocos2d::CCSize);
    TodoReturn readStringCache();
    TodoReturn readStringCacheEntry();
    TodoReturn toLowerCase(cocos2d::CCString*);

}

[[link(android)]]
class cocos2d::extension::CCControl {
    ~CCControl();
 
    TodoReturn CCControl();
    TodoReturn addTargetWithActionForControlEvent(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*, unsigned int), unsigned int);
    TodoReturn addTargetWithActionForControlEvents(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*, unsigned int), unsigned int);
    TodoReturn dispatchListforControlEvent(unsigned int);
    TodoReturn getColor();
    TodoReturn getDefaultTouchPriority();
    TodoReturn getOpacity();
    TodoReturn getState();
    TodoReturn getTouchLocation(cocos2d::CCTouch*);
    bool init();
    bool isEnabled();
    bool isHighlighted();
    bool isOpacityModifyRGB();
    bool isSelected();
    bool isTouchInside(cocos2d::CCTouch*);
    TodoReturn onEnter();
    TodoReturn onExit();
    TodoReturn registerWithTouchDispatcher();
    TodoReturn removeTargetWithActionForControlEvent(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*, unsigned int), unsigned int);
    TodoReturn removeTargetWithActionForControlEvents(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*, unsigned int), unsigned int);
    TodoReturn sendActionsForControlEvents(unsigned int);
    void setColor(cocos2d::ccColor3B const&);
    void setDefaultTouchPriority(int);
    void setEnabled(bool);
    void setHighlighted(bool);
    void setOpacity(unsigned char);
    void setOpacityModifyRGB(bool);
    void setSelected(bool);

}

[[link(android)]]
class cocos2d::JniHelper {
    TodoReturn getClassID(char const*, _JNIEnv*);
    TodoReturn getJavaVM();
    TodoReturn getMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*);
    TodoReturn getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*);
    TodoReturn jstring2string(_jstring*);
    void setJavaVM(_JavaVM*);

}

[[link(android)]]
class UILayer {
    // UILayer();
    virtual ~UILayer();
 
    UILayer* create();
 
    TodoReturn disableMenu();
    TodoReturn enableMenu();
    TodoReturn getClkTimer();
    TodoReturn onCheck();
    TodoReturn onDeleteCheck();
    TodoReturn onPause();
    TodoReturn pCommand(cocos2d::CCNode*);
    TodoReturn toggleCheckpointsMenu(bool);
 
    virtual TodoReturn draw();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual bool init();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class EditorUI {
    // EditorUI();
    virtual ~EditorUI();
 
    EditorUI* create(LevelEditorLayer*);
 
    TodoReturn applyOffset(GameObject*);
    TodoReturn clickOnPosition(cocos2d::CCPoint);
    TodoReturn colorSelectClosed(cocos2d::ccColor3B);
    TodoReturn constrainGameLayerPosition();
    TodoReturn createMoveMenu();
    TodoReturn deselectAll();
    TodoReturn deselectObject();
    TodoReturn disableButton(CCMenuItemSpriteExtra*);
    TodoReturn editObject();
    TodoReturn enableButton(CCMenuItemSpriteExtra*);
    TodoReturn getButton(char const*, int, cocos2d::SEL_CallFuncO, cocos2d::CCMenu*);
    TodoReturn getCreateBtn(char const*, int);
    TodoReturn getEditMode();
    TodoReturn getGridSnappedPos(cocos2d::CCPoint);
    TodoReturn getModeBtn(char const*, int);
    TodoReturn getRelativeOffset(GameObject*);
    TodoReturn getSpriteButton(char const*, cocos2d::SEL_CallFuncO, cocos2d::CCMenu*, float);
    TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn getXMin();
    bool init(LevelEditorLayer*);
    TodoReturn moveObject(GameObject*, cocos2d::CCPoint);
    TodoReturn moveObjectCall(cocos2d::CCNode*);
    TodoReturn offsetForFrame(char const*);
    TodoReturn onCreate();
    TodoReturn onCreateButton(cocos2d::CCNode*);
    TodoReturn onCreateObject(char const*);
    TodoReturn onDelete();
    TodoReturn onDeleteAll();
    TodoReturn onPause();
    TodoReturn onSettings();
    TodoReturn redoLastAction();
    TodoReturn removeOffset(GameObject*);
    TodoReturn resetUI();
    TodoReturn selectObject(GameObject*);
    TodoReturn selectObjectsInRect(cocos2d::CCRect);
    TodoReturn setupCreateMenu();
    TodoReturn setupDeleteMenu();
    TodoReturn setupEditMenu();
    TodoReturn showDeleteConfirmation();
    TodoReturn showMaxError();
    TodoReturn sliderChanged(SliderThumb*);
    TodoReturn toggleMode(cocos2d::CCNode*);
    TodoReturn toggleSwipe();
    TodoReturn transformObject(GameObject*, EditCommand);
    TodoReturn transformObjectCall(cocos2d::CCNode*);
    TodoReturn undoLastAction();
    TodoReturn updateCreateMenu();
    TodoReturn updateDeleteMenu();
    TodoReturn updateEditMenu();
    TodoReturn updateSlider();
    TodoReturn valueFromXPos(float);
    TodoReturn xPosFromValue(float);
    TodoReturn zoomGameLayer(bool);
    TodoReturn zoomIn();
    TodoReturn zoomOut();
 
    virtual TodoReturn draw();
 
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
 
    virtual TodoReturn registerWithTouchDispatcher();
 
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
 
    virtual void setEditMode(EditMode);

}

[[link(android)]]
class GameCell {
    GameCell(char const*, float, float);
    virtual ~GameCell();
 
    bool init();
    TodoReturn loadFromString(gd::string);
    TodoReturn onTouch();
    TodoReturn updateBGColor(int);
 
    virtual TodoReturn draw();

}

[[link(android)]]
class GManager {
    // GManager();
    virtual ~GManager();
 
    bool init();
    TodoReturn load();
    TodoReturn loadDataFromFile(char const*);
    TodoReturn save();
    TodoReturn saveData(DS_Dictionary*, char const*);
    TodoReturn saveGMTo(char const*);
 
    virtual TodoReturn setup();
 
    virtual TodoReturn encodeDataTo(DS_Dictionary*);
 
    virtual TodoReturn dataLoaded(DS_Dictionary*);
 
    virtual TodoReturn firstLoad();

}

[[link(android)]]
class ListCell {
    ListCell(char const*, float, float);
    virtual ~ListCell();
 
    bool init();
    TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
    TodoReturn updateBGColor(int);
 
    virtual TodoReturn draw();

}

[[link(android)]]
class SongCell {
    SongCell(char const*, float, float);
    virtual ~SongCell();
 
    bool init();
    TodoReturn loadFromObject(SongObject*);
    TodoReturn onClick();
    TodoReturn updateBGColor(int);
 
    virtual TodoReturn draw();

}

[[link(android)]]
class TextArea {
    // TextArea();
    virtual ~TextArea();
 
    TextArea* create(char const*, float, int, cocos2d::CCPoint, char const*);
    TextArea* create(char const*, float, int, cocos2d::CCPoint, char const*, float);
 
    TodoReturn colorAllCharactersTo(cocos2d::ccColor3B);
    TodoReturn fadeIn(float, bool);
    TodoReturn fadeOut(float);
    TodoReturn fadeOutAndRemove();
    TodoReturn finishFade();
    TodoReturn getAlign();
    TodoReturn getFadeInFinished();
    TodoReturn getLineSpace();
    TodoReturn getOnTimer();
    TodoReturn getOrder();
    TodoReturn getSizeWidth();
    TodoReturn getTextHeight();
    TodoReturn getTextPosition();
    TodoReturn getTextWidth();
    TodoReturn hideAll();
    bool init(char const*, float, int, cocos2d::CCPoint, char const*, float);
    void setString(char const*);
    TodoReturn showAll();
    TodoReturn stopAllCharacterActions();
 
    virtual TodoReturn draw();
 
    virtual void setOpacity(unsigned char);
 
    virtual void setOrder(int);
 
    virtual void setLineSpace(float);
 
    virtual void setOnTimer(bool);
 
    virtual void setAlign(cocos2d::CCPoint);
 
    virtual void setFadeInFinished(bool);

}

[[link(android)]]
class AdToolbox {
    TodoReturn cacheInterstitial();
    TodoReturn cacheInterstitial(gd::string);
    TodoReturn disableBanner();
    TodoReturn enableBanner();
    TodoReturn hasCachedInterstitial();
    TodoReturn hasCachedInterstitial(gd::string);
    TodoReturn setupAds();
    TodoReturn showInterstitial();
    TodoReturn showInterstitial(gd::string);

}

[[link(android)]]
class InfoLayer {
    // InfoLayer();
    virtual ~InfoLayer();
 
    InfoLayer* create(GJGameLevel*);
 
    bool init(GJGameLevel*);
    TodoReturn onClose();
    TodoReturn onMore();
    TodoReturn setupLevelInfo();
 
    virtual TodoReturn keyBackClicked();

}

[[link(android)]]
class LevelCell {
    LevelCell(char const*, float, float);
    virtual ~LevelCell();
 
    bool init();
    TodoReturn loadCustomLevelCell();
    TodoReturn loadFromLevel(GJGameLevel*);
    TodoReturn loadLocalLevelCell();
    TodoReturn onClick();
    TodoReturn updateBGColor(int);
 
    virtual TodoReturn draw();

}

[[link(android)]]
class LevelPage {
    // LevelPage();
    virtual ~LevelPage();
 
    LevelPage* create(GJGameLevel*);
 
    bool init(GJGameLevel*);
    TodoReturn onPlay();

}

[[link(android)]]
class MenuLayer {
    // MenuLayer();
    virtual ~MenuLayer();
 
    TodoReturn endGame();
    bool init();
    TodoReturn node();
    TodoReturn onAchievements();
    TodoReturn onCreator();
    TodoReturn onGameCenter();
    TodoReturn onGarage();
    TodoReturn onMoreGames();
    TodoReturn onOptions();
    TodoReturn onPlay();
    TodoReturn onRobTop();
    TodoReturn onStats();
    TodoReturn scene();
    TodoReturn showGCQuestion();
 
    virtual TodoReturn keyBackClicked();
 
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

}

[[link(android)]]
class PlayLayer {
    // PlayLayer();
    virtual ~PlayLayer();
 
    PlayLayer* create(GJGameLevel*);
 
    TodoReturn addToSection(GameObject*);
    TodoReturn animateInGround(bool);
    TodoReturn animateOutGround(bool);
    TodoReturn animateOutGroundFinished();
    TodoReturn applyEnterEffect(GameObject*);
    TodoReturn cameraMoveX(float, float, float);
    TodoReturn cameraMoveY(float, float, float);
    TodoReturn checkCollisions(float);
    TodoReturn checkSpawnObjects();
    TodoReturn createCheckpoint();
    TodoReturn createObjectsFromSetup(gd::string);
    TodoReturn destroyPlayer();
    TodoReturn fullReset();
    TodoReturn getActiveBGColor();
    TodoReturn getAttempts();
    TodoReturn getBatchNode();
    TodoReturn getBatchNodeAdd();
    TodoReturn getCameraPos();
    TodoReturn getCleanReset();
    TodoReturn getClkTimer();
    TodoReturn getGEM();
    TodoReturn getGameLayer();
    TodoReturn getJumps();
    TodoReturn getLastCheckpoint();
    TodoReturn getLevel();
    TodoReturn getPlayer();
    TodoReturn getPracticeMode();
    TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
    TodoReturn getStartPos();
    TodoReturn getTestMode();
    TodoReturn getUILayer();
    bool init(GJGameLevel*);
    TodoReturn levelComplete();
    TodoReturn loadLastCheckpoint();
    TodoReturn markCheckpoint();
    TodoReturn moveCameraToPos(cocos2d::CCPoint);
    TodoReturn onQuit();
    TodoReturn pauseGame();
    TodoReturn playGravityEffect(bool);
    TodoReturn registerActiveObject(GameObject*);
    TodoReturn registerStateObject(GameObject*);
    TodoReturn removeLastCheckpoint();
    TodoReturn removeObjectFromSection(GameObject*);
    TodoReturn reorderObjectSection(GameObject*);
    TodoReturn resetLevel();
    TodoReturn resume();
    TodoReturn scene(GJGameLevel*);
    TodoReturn sectionForPos(cocos2d::CCPoint);
    void setActiveEnterEffect(EnterEffect);
    TodoReturn shakeCamera(float);
    TodoReturn showCompleteEffect();
    TodoReturn showCompleteText();
    TodoReturn showEndLayer();
    TodoReturn showHint();
    TodoReturn spawnCircle();
    TodoReturn spawnFirework();
    TodoReturn startGame();
    TodoReturn stopCameraShake();
    TodoReturn storeCheckpoint(CheckpointObject*);
    TodoReturn switchToFlyMode(GameObject*, bool);
    TodoReturn tintBackground(cocos2d::ccColor3B, float);
    TodoReturn tintGround(cocos2d::ccColor3B, float);
    TodoReturn toggleAudioRain(bool);
    TodoReturn toggleGlitter(bool);
    TodoReturn togglePracticeMode(bool);
    TodoReturn unregisterActiveObject(GameObject*);
    TodoReturn unregisterStateObject(GameObject*);
    TodoReturn updateAttempts();
    TodoReturn updateCamera(float);
    TodoReturn updateVisibility();
 
    virtual TodoReturn update(float);
 
    virtual TodoReturn onEnterTransitionDidFinish();
 
    virtual TodoReturn onExit();
 
    virtual TodoReturn updateTweenAction(float, char const*);
 
    virtual void setCleanReset(bool);
 
    virtual void setStartPos(cocos2d::CCPoint);
 
    virtual void setJumps(int);

}

[[link(android)]]
class StatsCell {
    StatsCell(char const*, float, float);
    virtual ~StatsCell();
 
    TodoReturn getTitleFromKey(char const*);
    bool init();
    TodoReturn loadFromObject(StatsObject*);
    TodoReturn updateBGColor(int);
 
    virtual TodoReturn draw();

}

[[link(android)]]
class cocos2d::CCStringCompare {
    TodoReturn operator()(cocos2d::CCString*, cocos2d::CCString*);

}


