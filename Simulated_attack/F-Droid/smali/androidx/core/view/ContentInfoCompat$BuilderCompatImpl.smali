.class final Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BuilderCompatImpl"
.end annotation


# instance fields
.field mClip:Landroid/content/ClipData;

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mLinkUri:Landroid/net/Uri;

.field mSource:I


# direct methods
.method constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mClip:Landroid/content/ClipData;

    iput p2, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mSource:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 2

    .line 655
    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    new-instance v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$CompatImpl;-><init>(Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;)V

    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Compat;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mFlags:I

    return-void
.end method

.method public setLinkUri(Landroid/net/Uri;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mLinkUri:Landroid/net/Uri;

    return-void
.end method
