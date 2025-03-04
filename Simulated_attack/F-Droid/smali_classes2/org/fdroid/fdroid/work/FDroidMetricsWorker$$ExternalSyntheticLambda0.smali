.class public final synthetic Lorg/fdroid/fdroid/work/FDroidMetricsWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Landroid/content/pm/PackageInfo;

    check-cast p2, Landroid/content/pm/PackageInfo;

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/work/FDroidMetricsWorker;->$r8$lambda$w-jHnBy4fyJBktJ-1NCQis0K2gg(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result p1

    return p1
.end method
