.class final Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DbDiffUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/DbDiffUtils;->diffAndUpdateTable$default(Lorg/fdroid/database/DbDiffUtils;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$1;

    invoke-direct {v0}, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$1;-><init>()V

    sput-object v0, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$1;->INSTANCE:Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$1;

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
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    .line 0
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/fdroid/database/DbDiffUtils$diffAndUpdateTable$1;->invoke(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
