.class public final Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "IpfsGatewaySettingsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "prefs",
        "Lorg/fdroid/fdroid/Preferences;",
        "getPrefs",
        "()Lorg/fdroid/fdroid/Preferences;",
        "setPrefs",
        "(Lorg/fdroid/fdroid/Preferences;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_fullRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field public prefs:Lorg/fdroid/fdroid/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPrefs()Lorg/fdroid/fdroid/Preferences;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;->prefs:Lorg/fdroid/fdroid/Preferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "prefs"

    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;->setPrefs(Lorg/fdroid/fdroid/Preferences;)V

    .line 60
    new-instance p1, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1;

    invoke-direct {p1, p0}, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity$onCreate$1;-><init>(Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;)V

    const v0, -0x37c85250    # -188086.75f

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v1, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final setPrefs(Lorg/fdroid/fdroid/Preferences;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/IpfsGatewaySettingsActivity;->prefs:Lorg/fdroid/fdroid/Preferences;

    return-void
.end method
