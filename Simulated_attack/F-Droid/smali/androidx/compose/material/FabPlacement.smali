.class public final Landroidx/compose/material/FabPlacement;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# instance fields
.field private final height:I

.field private final isDocked:Z

.field private final left:I

.field private final width:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material/FabPlacement;->isDocked:Z

    iput p2, p0, Landroidx/compose/material/FabPlacement;->left:I

    iput p3, p0, Landroidx/compose/material/FabPlacement;->width:I

    iput p4, p0, Landroidx/compose/material/FabPlacement;->height:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/material/FabPlacement;->height:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/material/FabPlacement;->left:I

    return v0
.end method
