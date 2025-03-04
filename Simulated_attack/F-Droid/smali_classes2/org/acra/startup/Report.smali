.class public final Lorg/acra/startup/Report;
.super Ljava/lang/Object;
.source "Report.kt"


# instance fields
.field private approve:Z

.field private final approved:Z

.field private delete:Z

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/startup/Report;->file:Ljava/io/File;

    iput-boolean p2, p0, Lorg/acra/startup/Report;->approved:Z

    return-void
.end method


# virtual methods
.method public final getApprove()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/startup/Report;->approve:Z

    return v0
.end method

.method public final getApproved()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/startup/Report;->approved:Z

    return v0
.end method

.method public final getDelete()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/startup/Report;->delete:Z

    return v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/startup/Report;->file:Ljava/io/File;

    return-object v0
.end method

.method public final setApprove(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/acra/startup/Report;->approve:Z

    return-void
.end method

.method public final setDelete(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/acra/startup/Report;->delete:Z

    return-void
.end method
