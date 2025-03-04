.class final Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "KClassImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2;->invoke()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3;->INSTANCE:Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3;->invoke()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Type;
    .locals 1

    .line 0
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method
