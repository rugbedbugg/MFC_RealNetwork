.class public abstract Lcom/bumptech/glide/load/model/FileLoader$Factory;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/model/FileLoader$Factory;->opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1

    .line 125
    new-instance p1, Lcom/bumptech/glide/load/model/FileLoader;

    iget-object v0, p0, Lcom/bumptech/glide/load/model/FileLoader$Factory;->opener:Lcom/bumptech/glide/load/model/FileLoader$FileOpener;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    return-object p1
.end method
