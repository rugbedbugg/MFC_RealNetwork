.class final Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;
.super Ljava/lang/Object;
.source "GlideException.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/GlideException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndentedAppendable"
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private printedNewLine:Z


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    return-void
.end method

.method private safeSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    const-string v2, "  "

    .line 243
    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    .line 246
    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2

    .line 252
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->safeSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3

    .line 259
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->safeSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    const-string v2, "  "

    .line 262
    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 264
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->printedNewLine:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/GlideException$IndentedAppendable;->appendable:Ljava/lang/Appendable;

    .line 265
    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method
