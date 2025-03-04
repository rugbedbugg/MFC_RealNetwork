.class final Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KPackageImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPackageImpl;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;->invoke()Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/KPackageImpl$Data;
    .locals 2

    .line 80
    new-instance v0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$data$1;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl;)V

    return-object v0
.end method
