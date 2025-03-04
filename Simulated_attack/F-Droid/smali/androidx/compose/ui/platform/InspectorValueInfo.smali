.class public abstract Landroidx/compose/ui/platform/InspectorValueInfo;
.super Ljava/lang/Object;
.source "InspectableValue.kt"


# instance fields
.field private final info:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/InspectorValueInfo;->info:Lkotlin/jvm/functions/Function1;

    return-void
.end method
