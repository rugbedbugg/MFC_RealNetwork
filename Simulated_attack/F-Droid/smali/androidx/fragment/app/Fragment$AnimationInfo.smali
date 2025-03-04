.class Landroidx/fragment/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mAnimator:Landroid/animation/Animator;

.field mEnterAnim:I

.field mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionPostponed:Z

.field mExitAnim:I

.field mExitTransition:Ljava/lang/Object;

.field mFocusedView:Landroid/view/View;

.field mIsHideReplaced:Z

.field mIsPop:Z

.field mNextTransition:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mPostOnViewCreatedAlpha:F

.field mReenterTransition:Ljava/lang/Object;

.field mReturnTransition:Ljava/lang/Object;

.field mSharedElementEnterTransition:Ljava/lang/Object;

.field mSharedElementReturnTransition:Ljava/lang/Object;

.field mSharedElementSourceNames:Ljava/util/ArrayList;

.field mSharedElementTargetNames:Ljava/util/ArrayList;

.field mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 3558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 3585
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    return-void
.end method
