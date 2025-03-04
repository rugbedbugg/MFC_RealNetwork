.class public final Lio/ktor/http/Parameters$Companion;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lio/ktor/http/Parameters$Companion;

.field private static final Empty:Lio/ktor/http/Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/http/Parameters$Companion;

    invoke-direct {v0}, Lio/ktor/http/Parameters$Companion;-><init>()V

    sput-object v0, Lio/ktor/http/Parameters$Companion;->$$INSTANCE:Lio/ktor/http/Parameters$Companion;

    .line 17
    sget-object v0, Lio/ktor/http/EmptyParameters;->INSTANCE:Lio/ktor/http/EmptyParameters;

    sput-object v0, Lio/ktor/http/Parameters$Companion;->Empty:Lio/ktor/http/Parameters;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lio/ktor/http/Parameters;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/Parameters$Companion;->Empty:Lio/ktor/http/Parameters;

    return-object v0
.end method
