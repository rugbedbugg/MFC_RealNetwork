.class final Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;
.super Ljava/lang/Object;
.source "ViewLayer.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UniqueDrawingIdApi29"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;->INSTANCE:Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUniqueDrawingId(Landroid/view/View;)J
    .locals 2

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p0}, Landroidx/compose/ui/platform/ViewLayer$UniqueDrawingIdApi29$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method
