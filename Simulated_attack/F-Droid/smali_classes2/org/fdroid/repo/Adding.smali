.class public final Lorg/fdroid/repo/Adding;
.super Lorg/fdroid/repo/AddRepoState;
.source "RepoAdder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lorg/fdroid/repo/Adding;",
        "Lorg/fdroid/repo/AddRepoState;",
        "()V",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/repo/Adding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/repo/Adding;

    invoke-direct {v0}, Lorg/fdroid/repo/Adding;-><init>()V

    sput-object v0, Lorg/fdroid/repo/Adding;->INSTANCE:Lorg/fdroid/repo/Adding;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lorg/fdroid/repo/AddRepoState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
