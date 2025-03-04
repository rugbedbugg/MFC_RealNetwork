.class public final Landroidx/compose/runtime/SkippableUpdater;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private final composer:Landroidx/compose/runtime/Composer;


# direct methods
.method private synthetic constructor <init>(Landroidx/compose/runtime/Composer;)V
    .locals 0

    .line 4251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    return-void
.end method

.method public static final synthetic box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/runtime/SkippableUpdater;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SkippableUpdater;-><init>(Landroidx/compose/runtime/Composer;)V

    return-object v0
.end method

.method public static constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;
    .locals 1

    .line 0
    const-string v0, "composer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/runtime/SkippableUpdater;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/SkippableUpdater;

    invoke-virtual {p1}, Landroidx/compose/runtime/SkippableUpdater;->unbox-impl()Landroidx/compose/runtime/Composer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(Landroidx/compose/runtime/Composer;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Landroidx/compose/runtime/Composer;)Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkippableUpdater(composer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    invoke-static {v0, p1}, Landroidx/compose/runtime/SkippableUpdater;->equals-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->hashCode-impl(Landroidx/compose/runtime/Composer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->toString-impl(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Landroidx/compose/runtime/Composer;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    return-object v0
.end method
