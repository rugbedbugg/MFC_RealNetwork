.class Landroidx/documentfile/provider/SingleDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "SingleDocumentFile.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    iput-object p2, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    .line 55
    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    .line 66
    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    .line 86
    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
