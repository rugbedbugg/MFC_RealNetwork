.class Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;

.field private url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;->this$0:Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getUrl()Ljava/net/URL;
    .locals 1

    .line 0
    iget-object v0, p0, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;->url:Ljava/net/URL;

    return-object v0
.end method

.method setUrl(Ljava/net/URL;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;->url:Ljava/net/URL;

    return-void
.end method
