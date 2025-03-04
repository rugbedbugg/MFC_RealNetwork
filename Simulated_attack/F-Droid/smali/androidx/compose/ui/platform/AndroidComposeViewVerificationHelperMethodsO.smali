.class final Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final focusable(Landroid/view/View;IZ)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1880
    invoke-static {p1, p2}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;I)V

    .line 1882
    invoke-static {p1, p3}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Z)V

    return-void
.end method
