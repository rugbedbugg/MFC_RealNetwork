.class final Lio/ktor/http/CodecsKt$encodeURLPath$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Codecs.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/CodecsKt;->encodeURLPath(Ljava/lang/String;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_buildString:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/http/CodecsKt$encodeURLPath$1$1;->$this_buildString:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lio/ktor/http/CodecsKt$encodeURLPath$1$1;->invoke(B)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(B)V
    .locals 1

    iget-object v0, p0, Lio/ktor/http/CodecsKt$encodeURLPath$1$1;->$this_buildString:Ljava/lang/StringBuilder;

    .line 101
    invoke-static {p1}, Lio/ktor/http/CodecsKt;->access$percentEncode(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
