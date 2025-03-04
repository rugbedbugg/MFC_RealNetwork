.class public final Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;
.super Ljava/lang/Object;
.source "Wrapper.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;

    invoke-direct {v0}, Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/platform/WrapperVerificationHelperMethods;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attributeSourceResourceMap(Landroid/view/View;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Landroidx/compose/ui/platform/WrapperVerificationHelperMethods$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "view.attributeSourceResourceMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
