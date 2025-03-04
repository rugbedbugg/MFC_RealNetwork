.class final Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpHeaderValueParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValueItem(Ljava/lang/String;ILkotlin/Lazy;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;

    invoke-direct {v0}, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;-><init>()V

    sput-object v0, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;->INSTANCE:Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;

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

    .line 110
    invoke-virtual {p0}, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 1

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
