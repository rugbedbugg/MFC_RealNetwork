.class public final Landroidx/compose/runtime/CompositionLocalMap$Companion;
.super Ljava/lang/Object;
.source "CompositionLocalMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/CompositionLocalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/CompositionLocalMap$Companion;

.field private static final Empty:Landroidx/compose/runtime/CompositionLocalMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;

    invoke-direct {v0}, Landroidx/compose/runtime/CompositionLocalMap$Companion;-><init>()V

    sput-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->$$INSTANCE:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    .line 47
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->Empty:Landroidx/compose/runtime/CompositionLocalMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->Empty:Landroidx/compose/runtime/CompositionLocalMap;

    return-object v0
.end method
