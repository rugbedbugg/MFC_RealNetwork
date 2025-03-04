.class final Lio/ktor/client/HttpClientConfig$install$3$attributes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClientConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/HttpClientConfig$install$3;->invoke(Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/HttpClientConfig$install$3$attributes$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/client/HttpClientConfig$install$3$attributes$1;

    invoke-direct {v0}, Lio/ktor/client/HttpClientConfig$install$3$attributes$1;-><init>()V

    sput-object v0, Lio/ktor/client/HttpClientConfig$install$3$attributes$1;->INSTANCE:Lio/ktor/client/HttpClientConfig$install$3$attributes$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/util/Attributes;
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-static {v0}, Lio/ktor/util/AttributesJvmKt;->Attributes(Z)Lio/ktor/util/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lio/ktor/client/HttpClientConfig$install$3$attributes$1;->invoke()Lio/ktor/util/Attributes;

    move-result-object v0

    return-object v0
.end method
