.class public Lch/qos/logback/classic/joran/JoranConfigurator;
.super Lch/qos/logback/core/joran/JoranConfiguratorBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lch/qos/logback/core/joran/JoranConfiguratorBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 0

    .line 0
    invoke-static {p1}, Lch/qos/logback/classic/util/DefaultNestedComponentRules;->addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V

    return-void
.end method

.method public addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
    .locals 2

    .line 0
    invoke-super {p0, p1}, Lch/qos/logback/core/joran/JoranConfiguratorBase;->addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/ConfigurationAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/ConfigurationAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/contextName"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/ContextNameAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/ContextNameAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/contextListener"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/appender/sift"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/sift/SiftAction;

    invoke-direct {v1}, Lch/qos/logback/classic/sift/SiftAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/appender/sift/*"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/NOPAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/NOPAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/logger"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/LoggerAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/LoggerAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/logger/level"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/LevelAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/LevelAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/root"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/RootLoggerAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/RootLoggerAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/root/level"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/LevelAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/LevelAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/logger/appender-ref"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/AppenderRefAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/AppenderRefAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/root/appender-ref"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/AppenderRefAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/AppenderRefAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/include"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/IncludeAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/IncludeAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/includes"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/FindIncludeAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/FindIncludeAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/includes/include"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/receiver"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/classic/joran/action/ReceiverAction;

    invoke-direct {v1}, Lch/qos/logback/classic/joran/action/ReceiverAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    return-void
.end method
