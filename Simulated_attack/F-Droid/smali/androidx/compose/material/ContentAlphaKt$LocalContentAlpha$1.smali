.class final Landroidx/compose/material/ContentAlphaKt$LocalContentAlpha$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ContentAlpha.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/ContentAlphaKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/ContentAlphaKt$LocalContentAlpha$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material/ContentAlphaKt$LocalContentAlpha$1;

    invoke-direct {v0}, Landroidx/compose/material/ContentAlphaKt$LocalContentAlpha$1;-><init>()V

    sput-object v0, Landroidx/compose/material/ContentAlphaKt$LocalContentAlpha$1;->INSTANCE:Landroidx/compose/material/ContentAlphaKt$LocalContentAlpha$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroidx/compose/material/ContentAlphaKt$LocalContentAlpha$1;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
