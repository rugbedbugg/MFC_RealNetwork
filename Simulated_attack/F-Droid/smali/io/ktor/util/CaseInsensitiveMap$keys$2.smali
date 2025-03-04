.class final Lio/ktor/util/CaseInsensitiveMap$keys$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CaseInsensitiveMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/CaseInsensitiveMap;->getKeys()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/CaseInsensitiveMap$keys$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/util/CaseInsensitiveMap$keys$2;

    invoke-direct {v0}, Lio/ktor/util/CaseInsensitiveMap$keys$2;-><init>()V

    sput-object v0, Lio/ktor/util/CaseInsensitiveMap$keys$2;->INSTANCE:Lio/ktor/util/CaseInsensitiveMap$keys$2;

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
.method public final invoke(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;
    .locals 1

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lio/ktor/util/TextKt;->caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/ktor/util/CaseInsensitiveMap$keys$2;->invoke(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;

    move-result-object p1

    return-object p1
.end method
