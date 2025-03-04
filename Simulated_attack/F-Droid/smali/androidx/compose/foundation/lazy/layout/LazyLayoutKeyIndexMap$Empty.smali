.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;
.super Ljava/lang/Object;
.source "LazyLayoutKeyIndexMap.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;->$$INSTANCE:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/Object;)I
    .locals 1

    .line 0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic getKey(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;->getKey(I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getKey(I)Ljava/lang/Void;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method
