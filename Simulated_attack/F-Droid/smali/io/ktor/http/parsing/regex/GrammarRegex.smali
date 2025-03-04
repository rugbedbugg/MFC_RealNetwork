.class final Lio/ktor/http/parsing/regex/GrammarRegex;
.super Ljava/lang/Object;
.source "RegexParserGenerator.kt"


# instance fields
.field private final groupsCount:I

.field private final regex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2

    const-string v0, "regexRaw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lio/ktor/http/parsing/regex/GrammarRegex;->regex:Ljava/lang/String;

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    iput p2, p0, Lio/ktor/http/parsing/regex/GrammarRegex;->groupsCount:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public final getGroupsCount()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/http/parsing/regex/GrammarRegex;->groupsCount:I

    return v0
.end method

.method public final getRegex()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/http/parsing/regex/GrammarRegex;->regex:Ljava/lang/String;

    return-object v0
.end method
