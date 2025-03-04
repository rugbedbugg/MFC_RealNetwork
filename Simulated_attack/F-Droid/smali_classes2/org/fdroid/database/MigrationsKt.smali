.class public final Lorg/fdroid/database/MigrationsKt;
.super Ljava/lang/Object;
.source "Migrations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "MIGRATION_2_3",
        "Landroidx/room/migration/Migration;",
        "getMIGRATION_2_3",
        "()Landroidx/room/migration/Migration;",
        "MIGRATION_5_6",
        "getMIGRATION_5_6",
        "REPO_WEIGHT",
        "",
        "database_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MIGRATION_2_3:Landroidx/room/migration/Migration;

.field private static final MIGRATION_5_6:Landroidx/room/migration/Migration;

.field private static final REPO_WEIGHT:I = 0x3b9aca00


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lorg/fdroid/database/MigrationsKt$MIGRATION_2_3$1;

    invoke-direct {v0}, Lorg/fdroid/database/MigrationsKt$MIGRATION_2_3$1;-><init>()V

    sput-object v0, Lorg/fdroid/database/MigrationsKt;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    .line 123
    new-instance v0, Lorg/fdroid/database/MigrationsKt$MIGRATION_5_6$1;

    invoke-direct {v0}, Lorg/fdroid/database/MigrationsKt$MIGRATION_5_6$1;-><init>()V

    sput-object v0, Lorg/fdroid/database/MigrationsKt;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    return-void
.end method

.method public static final getMIGRATION_2_3()Landroidx/room/migration/Migration;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/database/MigrationsKt;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final getMIGRATION_5_6()Landroidx/room/migration/Migration;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/database/MigrationsKt;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    return-object v0
.end method
