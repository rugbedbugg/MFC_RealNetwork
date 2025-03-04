.class final Lio/ktor/util/StringValuesBuilderImpl$appendAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StringValues.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/StringValuesBuilderImpl;->appendAll(Lio/ktor/util/StringValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/util/StringValuesBuilderImpl;


# direct methods
.method constructor <init>(Lio/ktor/util/StringValuesBuilderImpl;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/util/StringValuesBuilderImpl$appendAll$1;->this$0:Lio/ktor/util/StringValuesBuilderImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/StringValuesBuilderImpl$appendAll$1;->invoke(Ljava/lang/String;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/util/StringValuesBuilderImpl$appendAll$1;->this$0:Lio/ktor/util/StringValuesBuilderImpl;

    .line 236
    invoke-virtual {v0, p1, p2}, Lio/ktor/util/StringValuesBuilderImpl;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method
