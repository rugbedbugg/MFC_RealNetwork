.class public Landroidx/appcompat/widget/TintInfo;
.super Ljava/lang/Object;
.source "TintInfo.java"


# instance fields
.field public mHasTintList:Z

.field public mHasTintMode:Z

.field public mTintList:Landroid/content/res/ColorStateList;

.field public mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    return-void
.end method
