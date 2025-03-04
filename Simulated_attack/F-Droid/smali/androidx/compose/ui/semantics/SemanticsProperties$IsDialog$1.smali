.class final Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SemanticsProperties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/semantics/SemanticsProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 164
    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;->invoke(Lkotlin/Unit;Lkotlin/Unit;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Unit;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
