.class public final synthetic Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic f$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final synthetic f$1:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda1;->f$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda1;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda1;->f$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lorg/fdroid/fdroid/views/main/LatestViewBinder$$ExternalSyntheticLambda1;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/views/main/LatestViewBinder;->$r8$lambda$BlE5oHWz8vmdNSSR0jwIOcOPmqA(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
