.class final Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;
.super Lkotlin/jvm/internal/Lambda;
.source "caches.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/CachesKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;

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

    .line 17
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;->invoke(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KPackageImpl;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lkotlin/reflect/jvm/internal/KPackageImpl;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/KPackageImpl;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
