.class final Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DbV2StreamReceiver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/DbV2StreamReceiver;-><init>(Lorg/fdroid/database/FDroidDatabaseInt;JLorg/fdroid/CompatibilityChecker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;

    invoke-direct {v0}, Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;-><init>()V

    sput-object v0, Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;->INSTANCE:Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lorg/fdroid/index/v2/FileV2;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/DbV2StreamReceiver$nonNullFileV2$1;->invoke(Lorg/fdroid/index/v2/FileV2;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/fdroid/index/v2/FileV2;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1}, Lorg/fdroid/index/v2/FileV2;->getSha256()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p1}, Lorg/fdroid/index/v2/FileV2;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lkotlinx/serialization/SerializationException;

    invoke-virtual {p1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not start with /"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    new-instance v0, Lkotlinx/serialization/SerializationException;

    invoke-virtual {p1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no size"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    new-instance v0, Lkotlinx/serialization/SerializationException;

    invoke-virtual {p1}, Lorg/fdroid/index/v2/FileV2;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no sha256"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method
