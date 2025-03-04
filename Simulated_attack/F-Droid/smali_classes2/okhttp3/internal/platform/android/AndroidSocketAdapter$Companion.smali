.class public final Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;
.super Ljava/lang/Object;
.source "AndroidSocketAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/android/AndroidSocketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$build(Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;Ljava/lang/Class;)Lokhttp3/internal/platform/android/AndroidSocketAdapter;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;->build(Ljava/lang/Class;)Lokhttp3/internal/platform/android/AndroidSocketAdapter;

    move-result-object p0

    return-object p0
.end method

.method private final build(Ljava/lang/Class;)Lokhttp3/internal/platform/android/AndroidSocketAdapter;
    .locals 3

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenSSLSocketImpl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No OpenSSLSocketImpl superclass of socket of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 116
    :cond_1
    new-instance p1, Lokhttp3/internal/platform/android/AndroidSocketAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lokhttp3/internal/platform/android/AndroidSocketAdapter;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method


# virtual methods
.method public final factory(Ljava/lang/String;)Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion$factory$1;

    invoke-direct {v0, p1}, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion$factory$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPlayProviderFactory()Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;
    .locals 1

    .line 95
    invoke-static {}, Lokhttp3/internal/platform/android/AndroidSocketAdapter;->access$getPlayProviderFactory$cp()Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;

    move-result-object v0

    return-object v0
.end method
