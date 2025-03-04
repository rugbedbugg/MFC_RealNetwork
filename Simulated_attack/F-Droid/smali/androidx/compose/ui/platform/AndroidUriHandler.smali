.class public final Landroidx/compose/ui/platform/AndroidUriHandler;
.super Ljava/lang/Object;
.source "AndroidUriHandler.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/UriHandler;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUriHandler;->context:Landroid/content/Context;

    return-void
.end method
