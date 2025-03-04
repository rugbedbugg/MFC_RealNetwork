.class public final Landroidx/compose/ui/semantics/CollectionInfo;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# instance fields
.field private final columnCount:I

.field private final rowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    iput p2, p0, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    return-void
.end method


# virtual methods
.method public final getColumnCount()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    return v0
.end method

.method public final getRowCount()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    return v0
.end method
