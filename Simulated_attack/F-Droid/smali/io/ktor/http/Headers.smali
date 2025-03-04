.class public interface abstract Lio/ktor/http/Headers;
.super Ljava/lang/Object;
.source "Headers.kt"

# interfaces
.implements Lio/ktor/util/StringValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/Headers$Companion;,
        Lio/ktor/http/Headers$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/Headers$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/Headers$Companion;->$$INSTANCE:Lio/ktor/http/Headers$Companion;

    sput-object v0, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    return-void
.end method
