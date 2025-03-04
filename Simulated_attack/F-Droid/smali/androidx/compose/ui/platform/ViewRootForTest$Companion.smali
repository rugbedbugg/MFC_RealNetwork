.class public final Landroidx/compose/ui/platform/ViewRootForTest$Companion;
.super Ljava/lang/Object;
.source "ViewRootForTest.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewRootForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/platform/ViewRootForTest$Companion;

.field private static onViewCreatedCallback:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/ViewRootForTest$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewRootForTest$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewRootForTest$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/ViewRootForTest$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOnViewCreatedCallback()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/ViewRootForTest$Companion;->onViewCreatedCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
