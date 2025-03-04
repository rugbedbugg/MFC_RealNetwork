.class public final Landroidx/work/impl/model/WorkName;
.super Ljava/lang/Object;
.source "WorkName.kt"


# instance fields
.field private final name:Ljava/lang/String;

.field private final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpecId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkSpecId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    return-object v0
.end method
