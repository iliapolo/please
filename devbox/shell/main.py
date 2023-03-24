import click
import typing
import os


@click.group()
@click.pass_context
def app(ctx: typing.Any):

    ctx.obj = {
        'src_dir': os.path.expanduser('~/dev/src')
    }

