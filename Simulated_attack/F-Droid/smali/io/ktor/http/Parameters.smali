.class public interface abstract Lio/ktor/http/Parameters;
.super Ljava/lang/Object;
.source "Parameters.kt"

# interfaces
.implements Lio/ktor/util/StringValues;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/Parameters$Companion;,
        Lio/ktor/http/Parameters$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/Parameters$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/http/Parameters$Companion;->$$INSTANCE:Lio/ktor/http/Parameters$Companion;

    sput-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    return-void
.end method
