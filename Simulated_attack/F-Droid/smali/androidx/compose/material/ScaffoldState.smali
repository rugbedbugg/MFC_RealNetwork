.class public final Landroidx/compose/material/ScaffoldState;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# instance fields
.field private final drawerState:Landroidx/compose/material/DrawerState;

.field private final snackbarHostState:Landroidx/compose/material/SnackbarHostState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;)V
    .locals 1

    const-string v0, "drawerState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snackbarHostState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    iput-object p2, p0, Landroidx/compose/material/ScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    return-void
.end method


# virtual methods
.method public final getDrawerState()Landroidx/compose/material/DrawerState;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material/ScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    return-object v0
.end method

.method public final getSnackbarHostState()Landroidx/compose/material/SnackbarHostState;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/material/ScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    return-object v0
.end method
