.class public final Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;
.super Landroidx/work/impl/constraints/ConstraintsState;
.source "WorkConstraintsTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/ConstraintsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConstraintsMet"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    invoke-direct {v0}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;-><init>()V

    sput-object v0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Landroidx/work/impl/constraints/ConstraintsState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
