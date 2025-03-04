.class final Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KPackageImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPackageImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KPackageImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

.field final synthetic this$1:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl;Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$1:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->invoke()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$1:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    .line 76
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->getScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;->DECLARED:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getMembers(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
