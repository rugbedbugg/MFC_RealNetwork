.class public final Landroidx/core/app/PictureInPictureModeChangedInfo;
.super Ljava/lang/Object;
.source "PictureInPictureModeChangedInfo.java"


# instance fields
.field private final mIsInPictureInPictureMode:Z

.field private final mNewConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/core/app/PictureInPictureModeChangedInfo;->mIsInPictureInPictureMode:Z

    iput-object p2, p0, Landroidx/core/app/PictureInPictureModeChangedInfo;->mNewConfig:Landroid/content/res/Configuration;

    return-void
.end method
