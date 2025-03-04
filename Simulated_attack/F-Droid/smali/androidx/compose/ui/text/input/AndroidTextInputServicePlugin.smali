.class public final Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;
.super Ljava/lang/Object;
.source "AndroidTextInputServicePlugin.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/PlatformTextInputPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;->INSTANCE:Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Landroidx/compose/ui/text/input/PlatformTextInput;Landroid/view/View;)Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;
    .locals 1

    const-string v0, "platformTextInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    invoke-direct {v0, p2, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;-><init>(Landroid/view/View;Landroidx/compose/ui/text/input/PlatformTextInput;)V

    .line 45
    new-instance p1, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;

    new-instance p2, Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {p2, v0}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    invoke-direct {p1, p2, v0}, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextInputServiceAndroid;)V

    return-object p1
.end method

.method public bridge synthetic createAdapter(Landroidx/compose/ui/text/input/PlatformTextInput;Landroid/view/View;)Landroidx/compose/ui/text/input/PlatformTextInputAdapter;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin;->createAdapter(Landroidx/compose/ui/text/input/PlatformTextInput;Landroid/view/View;)Landroidx/compose/ui/text/input/AndroidTextInputServicePlugin$Adapter;

    move-result-object p1

    return-object p1
.end method
