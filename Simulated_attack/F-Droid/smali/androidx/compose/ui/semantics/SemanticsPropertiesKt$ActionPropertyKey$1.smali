.class public final Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SemanticsProperties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/semantics/AccessibilityAction;Landroidx/compose/ui/semantics/AccessibilityAction;)Landroidx/compose/ui/semantics/AccessibilityAction;
    .locals 2

    const-string v0, "childValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    new-instance v0, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/AccessibilityAction;->getLabel()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p1, :cond_2

    .line 467
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/AccessibilityAction;->getAction()Lkotlin/Function;

    move-result-object p1

    .line 465
    :cond_3
    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 464
    check-cast p1, Landroidx/compose/ui/semantics/AccessibilityAction;

    check-cast p2, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->invoke(Landroidx/compose/ui/semantics/AccessibilityAction;Landroidx/compose/ui/semantics/AccessibilityAction;)Landroidx/compose/ui/semantics/AccessibilityAction;

    move-result-object p1

    return-object p1
.end method
